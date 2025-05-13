NAME	:= LKBD
GITROOT	:= $(shell git rev-parse --show-toplevel)

SYMBOLS		:= $(wildcard symbols/*.kicad_sym)
SYMTARGETS	:= $(SYMBOLS:symbols/%=output/symbols/%)

FOOTPRINTS	:= $(wildcard footprints/*.pretty)
FPTARGETS	:= $(FOOTPRINTS:footprints/%=output/footprints/%)

default: clean export documentation

export: $(SYMTARGETS) $(FPTARGETS)

documentation: symbols/README.md footprints/README.md

symbols: $(SYMTARGETS) symbols/README.md

symbols/README.md:
	$(info + [$(NAME)] generate $@)
	python scripts/gen-sym-doc.py > $@

output/symbols/%.kicad_sym: symbols/%.kicad_sym
	$(info + [$(NAME)] export $* symbols)
	mkdir -p $(dir $@)
	kicad-cli sym export svg \
	    --output=$@ $<
	svgo -qrf $@

footprints: $(FPTARGETS) footprints/README.md

footprints/README.md:
	$(info + [$(NAME)] generate $@)
	python scripts/gen-fp-doc.py > $@

output/footprints/%.pretty: footprints/%.pretty
	$(info + [$(NAME)] export $* footprints)
	mkdir -p $(dir $@)
	kicad-cli fp export svg \
	    --sketch-pads-on-fab-layers \
	    --layers=B.SilkS,F.SilkS,B.Paste,F.Paste,B.Cu,F.Cu,B.Fab,F.Fab,Edge.Cuts,User.Drawings \
	    --output=$@ $<
	svgo -qrf $@

clean:
	$(info + [$(NAME)] $@)
	rm -rf output/footprints/*.pretty/*.svg
	rm -rf output/symbols/*.kicad_sym/*.svg

.PHONY: default export documentation symbols $(SYMBOLS) symbols/README.md footprints footprints/README.md $(FOOTPRINTS) clean

NAME	:= LKBD
GITROOT	:= $(shell git rev-parse --show-toplevel)

SYMBOLS		:= $(wildcard symbols/*.kicad_sym)
SYMTARGETS	:= $(SYMBOLS:symbols/%=output/symbols/%)

FOOTPRINTS	:= $(wildcard footprints/*.pretty)
FPTARGETS	:= $(FOOTPRINTS:footprints/%=output/footprints/%)

default: clean export

export: symbols footprints

symbols: $(SYMTARGETS)

output/symbols/%.kicad_sym: symbols/%.kicad_sym
	$(info + [$(NAME)] export $* symbols)
	mkdir -p $(dir $@)
	kicad-cli sym export svg \
	    --output=$@ $<

footprints: $(FPTARGETS)

output/footprints/%.pretty: footprints/%.pretty
	$(info + [$(NAME)] export $* footprints)
	mkdir -p $(dir $@)
	kicad-cli fp export svg \
	    --sketch-pads-on-fab-layers \
	    --layers=F.SilkS,B.SilkS,F.Paste,B.Paste,F.Cu,B.Cu,F.Fab,B.Fab,Edge.Cuts,User.Drawings \
	    --output=$@ $<

clean:
	$(info + [$(NAME)] $@)
	rm -rf output/footprints/*.svg
	rm -rf output/symbols/*.svg

.PHONY: default export symbols $(SYMBOLS) footprints $(FOOTPRINTS) clean

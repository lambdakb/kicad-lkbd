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

# footprints: $(FPTARGETS)

# output/footprints/%.pretty: footprints/%.pretty
# 	$(info + [$(NAME)] export $* footprints)
# 	mkdir -p $(dir $@)
# 	# NOTE: This doesn't export holes in pads properly, export are done manually for now
# 	kicad-cli fp export svg \
# 	    --layers=F.SilkS,B.SilkS,F.Paste,B.Paste,F.Mask,B.Mask,F.Cu,B.Cu \
# 	    --output=$@ $<

clean:
	$(info + [$(NAME)] $@)
	rm -rf output/footprints/*.svg
	rm -rf output/symbols/*.svg

.PHONY: default export symbols $(SYMBOLS) footprints $(FOOTPRINTS) clean

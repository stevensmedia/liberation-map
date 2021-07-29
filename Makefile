GRAPHVIZ = /usr/local/graphviz-*
DOT = $(GRAPHVIZ)/bin/fdp

all: liberation.xdot.json

liberation.xdot.json: liberation.cpp.dot
	$(DOT) -Txdot_json -o $@ $^

liberation.cpp.dot: liberation.dot
	cpp $^ > $@

.PHONY: clean
clean:
	-rm -f liberation.svg liberation.gxl liberation.vdx liberation.cpp.dot liberation.xdot.json

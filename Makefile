DOT = /usr/local/graphviz-*/bin/fdp

liberation.svg: liberation.dot
	cpp $^ | $(DOT) -Tsvg -o $@

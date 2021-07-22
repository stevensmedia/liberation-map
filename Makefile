DOT = /usr/local/graphviz-*/bin/dot

liberation.svg: liberation.dot
	cpp $^ | $(DOT) -Tsvg -o $@

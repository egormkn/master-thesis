build:
	latexmk -synctex=1 -interaction=nonstopmode -file-line-error -xelatex -outdir="./output"

clean:
	rm -rf ./output

.PHONY: build clean
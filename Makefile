all: build run

build:
	latexmk -xelatex -synctex=1 -jobname=thesis main.tex

run:
	zathura thesis.pdf

clean:
	rm *.aux \
	*.fdb_latexmk \
	*.fls \
	*.lof \
	*.lot \
	*.log \
	*.out \
	*.synctex.gz \
    *.toc

docker:
	docker run --rm -ti -v ${PWD}:/document-src:Z docker-latex bash -c "make build && make clean"

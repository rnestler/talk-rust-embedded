LATEXMK=latexmk
LATEXMK_ARGS=-pdf -e '$$pdflatex=q/lualatex --shell-escape %O %S/'


slides.pdf: slides.tex
	${LATEXMK} ${LATEXMK_ARGS} slides.tex

clean:
	latexmk -c
	rm -rf _minted-slides/ *.sty *.snm *.vrb *.nav slides.pdf

PHONY: clean

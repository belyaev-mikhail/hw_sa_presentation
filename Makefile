all: presentation.pdf

%.pdf: %.md
	pandoc -t beamer+smart --pdf-engine xelatex $< -o $@

%.tex: %.md
	pandoc --standalone -t beamer+smart --pdf-engine xelatex $< -o $@

%.eps: %.svg
	inkscape $*.svg --export-filename $*.eps

clean:
	rm -f presentation.pdf

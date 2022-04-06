all: presentation.pdf

%.pdf: %.md
	pandoc -t beamer+smart --pdf-engine xelatex $< -o $@

%.tex: %.md
	pandoc --standalone -t beamer+smart --pdf-engine xelatex $< -o $@

clean:
	rm -f presentation.pdf

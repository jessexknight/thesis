all:
	make tex && make bib && make tex && make tex

tex:
	pdflatex main

bib:
	biber main

clean:
	texclean .

bibexport:
	biber main --output-format=bibtex --output-fieldcase=lower

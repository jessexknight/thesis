all:
	make clean && make tex && make bib && make tex && make tex

tex:
	pdflatex main

bib:
	biber main

clean:
	texclean .

CHAPTERS_DIR=chapters

main.pdf: main.tex $(CHAPTERS_DIR)/*.tex
	pdflatex -shell-escape main.tex

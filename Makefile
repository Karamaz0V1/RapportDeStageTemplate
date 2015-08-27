ARGS=-shell-escape
#ARGS=-shell-escape -interaction=batchmode

all: pre_clean pdf pdf_second_pass clean
	echo Done

clean:
	rm -f *~ *.backup *.aux *.toc *.blg *.log *.out *.bbl *.dvi *.nav *.pyg *.snm *.lof

pdf:
	pdflatex $(ARGS) rapport.tex

pdf_second_pass:
	pdflatex $(ARGS) rapport.tex

pre_clean:
	rm -f *~ *.backup *.aux *.toc *.blg *.log *.out *.bbl *.dvi *.nav *.pyg *.snm *.lof

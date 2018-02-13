SHELL=C:/Windows/System32/cmd.exe
#LATEX = pdflatex
LATEX = xelatex
SOURCES = *.tex text/*.tex

all: oed_study.pdf

oed_study.pdf: $(SOURCES)
	$(LATEX) oed_study.tex
	makeindex oed_study.idx
	$(LATEX) oed_study.tex

clean:
	rm -f *~ *.aux *.idx *.ilg *.ind *.log *.out *.toc text/*.aux oed_study.pdf .pdf

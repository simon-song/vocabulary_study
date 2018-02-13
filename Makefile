SHELL=C:/Windows/System32/cmd.exe
#LATEX = pdflatex
LATEX = xelatex
SOURCES = *.tex text/*.tex

all: vocabulary_study.pdf

vocabulary_study.pdf: $(SOURCES)
	$(LATEX) vocabulary_study.tex
	makeindex vocabulary_study.idx
	$(LATEX) vocabulary_study.tex

clean:
	rm -f *~ *.aux *.idx *.ilg *.ind *.log *.out *.toc text/*.aux vocabulary_study.pdf .pdf

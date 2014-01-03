THESISMAIN = main
VIEWER = evince

.PHONY : all clean distclean view wordcount

OPT = -silent -f

all: $(THESISMAIN).pdf

$(THESISMAIN).pdf : *.tex ref/*.bib *.cls *.cfg
	latexmk $(OPT) -xelatex $(THESISMAIN).tex

view : all
	$(VIEWER) ${THESISMAIN}.pdf 2>/dev/null &

wordcount: all
	@pdftotext ${THESISMAIN}.pdf - | cwc_utf8.pl

clean :
	latexmk -C 2>/dev/null

bibtex:
	touch main.tex
	latexmk $(OPT) -xelatex $(THESISMAIN).tex

rebuild: clean all

distclean : clean
	@rm -f $(THESISMAIN).pdf

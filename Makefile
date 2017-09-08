
LATEX_SRC =\
 coordsys.tex\
 fdl-1.3.tex\
 front-matter.tex\
 preamble.tex\
 title.tex

%.pdf : %.fig
	fig2dev -L pdf $< > $@

coordsys.pdf : $(LATEX_SRC) logo.pdf
	pdflatex coordsys
	bibtex coordsys
	makeindex coordsys.idx
	asy coordsys-*.asy
	pdflatex coordsys
	pdflatex coordsys
	pdflatex coordsys

.PHONY: clean

clean :
	@rm -fv *.aux
	@rm -fv *.bbl
	@rm -fv *.blg
	@rm -fv coordsys-*.asy
	@rm -fv coordsys-*.pdf
	@rm -fv coordsys.pdf
	@rm -fv coordsys-*.pre
	@rm -fv coordsys-*.tex
	@rm -fv *.idx
	@rm -fv *.ilg
	@rm -fv *.ind
	@rm -fv *.lof
	@rm -fv *.log
	@rm -fv logo.pdf
	@rm -fv *.lot
	@rm -fv *.out
	@rm -fv *.out
	@rm -fv *.pre
	@rm -fv *.toc


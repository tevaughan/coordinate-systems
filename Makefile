
LATEX_SRC =\
 coordsys.tex\
 preamble.tex\
 front-matter.tex\
 fdl-1.3.tex

coordsys.pdf : $(LATEX_SRC)
	pdflatex coordsys
#	bibtex coordsys
	makeindex coordsys.idx
	pdflatex coordsys
	pdflatex coordsys
	pdflatex coordsys

.PHONY: clean

clean :
	@rm -fv coordsys.pdf
	@rm -fv *.aux
	@rm -fv *.bbl
	@rm -fv *.blg
	@rm -fv *.idx
	@rm -fv *.ilg
	@rm -fv *.ind
	@rm -fv *.lof
	@rm -fv *.log
	@rm -fv *.lot
	@rm -fv *.out
	@rm -fv *.out
	@rm -fv *.toc



coordsys.pdf : coordsys.tex
	pdflatex coordsys
	bibtex coordsys
	makeindex coordsys.idx
	pdflatex coordsys
	pdflatex coordsys
	pdflatex coordsys

.PHONY: clean

clean :
	@rm -fv coordsys.pdf
	@rm -fv *.out
	@rm -fv *.log
	@rm -fv *.aux
	@rm -fv *.bbl
	@rm -fv *.blg
	@rm -fv *.idx
	@rm -fv *.lof
	@rm -fv *.lot
	@rm -fv *.out
	@rm -fv *.toc


name = proposal

all:
	pdflatex  --shell-escape tex/summary.tex
	pdflatex  --shell-escape tex/narrative.tex
	pdflatex  --shell-escape tex/milestone.tex
	pdflatex  --shell-escape tex/publication.tex
	pdflatex  --shell-escape tex/personnel.tex
	pdflatex  --shell-escape bios/merzari_cv.tex
	pdflatex  --shell-escape bios/fischer_cv.tex
	pdflatex  --shell-escape bios/min_cv.tex

	pdflatex  --shell-escape $(name).tex
	pdflatex  --shell-escape $(name).tex
	bibtex narrative
	bibtex narrative
	pdflatex  --shell-escape tex/narrative.tex
	pdflatex  --shell-escape $(name).tex
	pdflatex  --shell-escape $(name).tex
	pdflatex  --shell-escape $(name).tex
	rm *.aux *.toc *.out *.bbl *.blg *.log      
clean:
	rm *.aux *.toc *.out *.bbl *.blg *.log *.pdf


mcarthur.pdf:  mcarthur.tex mcarthur.bib Makefile
	latexmk mcarthur

up: 
	rsync -Cuavz *.pdf yonosuke@yonosuke.sakura.ne.jp:www/eguchi/material/
	rsync -Cuavz --exclude=".git" ./ ~/google/z-tr/
	rsync -Cuavz *.pdf  ~/google/material/

clean:
	rm *.bbl *.blg *.fls *.log *.fdb_latexmk *.out *.aux *.toc *.dvi



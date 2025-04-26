mcarthur.pdf:  mcarthur.tex mcarthur.bib Makefile
	latexmk mcarthur

up: 
	rsync -Cuavz *.pdf yonosuke@yonosuke.sakura.ne.jp:www/eguchi/material/
	rsync -Cuavz --exclude=".git" ./ ~/google/z-back/mcarthur2022/
	rsync -Cuavz *.pdf  ~/google/material/

clean:
	rm *.bbl *.blg *.fls *.log *.fdb_latexmk *.out *.aux *.toc *.dvi


index-word.tsv:
	wget -O index-word.tsv "https://docs.google.com/spreadsheets/d/1hevdKiiRsZmYbrwLDE-5RF3udNZ0yL0hc_qQevHw9cs/export?format=tsv"


SOURCES = *.tex

all: iliad_note.pdf

iliad_note.pdf: $(SOURCES)
	xelatex iliad_note.tex
	xelatex iliad_note.tex
	xelatex iliad_note.tex
	#makeindex iliad_note
	#xindy iliad_note
	texindy -I xelatex -C utf8 -L greek-polytonic iliad_note.idx
	xelatex iliad_note.tex

clean:
	rm -f *.aux *.idx *.ilg *.ind *.log *.out *.toc iliad_note.pdf .pdf

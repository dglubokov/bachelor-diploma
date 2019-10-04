all: build run clean

build:
	latexmk -xelatex \
	-synctex=1 main.tex
	
run:
	# Просмотр в pdf. У меня atril
	atril main.pdf &
	
clean:
	rm *.aux \
	*.fdb_latexmk \
	*.fls \
	*.log \
	*.out \
	*.synctex.gz \
	*.toc

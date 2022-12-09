all: index.qmd
	Rscript -e 'quarto::quarto_render(); browseURL("docs/index.html")'

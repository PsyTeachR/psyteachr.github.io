all: index.qmd
	Rscript -e 'quarto::quarto_render()'

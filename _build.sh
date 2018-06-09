#!/bin/sh

Rscript -e "rmarkdown::render_site(encoding = 'UTF-8')"
Rscript -e "rmarkdown::render_site(output_format = 'bookdown::word_document2', encoding = 'UTF-8')"
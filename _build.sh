#!/bin/sh

Rscript -e "bookdown::render_book('index.Rmd', c('bookdown::gitbook', 'bookdown::epub_book', 'bookdown::pdf_book', 
'bookdown::word_document2'))"

files <- c(
  "index.Rmd", 
  "01_introduction.Rmd",
  "02_new_project.Rmd",
  "02_data_storage.Rmd", 
  "02_metadata.Rmd",
  "02_data_collection.Rmd",
  "02_data_publication.Rmd",
  "03_case_studies.Rmd",
  "04_other_projects.Rmd",
  "04a_literature-review.Rmd",
  "05_faq.Rmd",
  "06_glossary.Rmd",
  "07_references.Rmd"
)

read_captions <- function(file) grep("^#", readLines(file), value = TRUE)

captions <- stats::setNames(lapply(files, read_captions), files)

for (file in files) {

  cat(sprintf("\n%s:\n", file))
  writeLines(captions[[file]])
}
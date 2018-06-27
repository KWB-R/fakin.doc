add_text <- function (pandoc_convert = knitr:::pandoc_to(),
          pandoc_output_pattern = "html",
          pandoc_output_txt) {

  out_txt <- ""
  
if (grepl(pandoc_output_pattern, pandoc_convert)) {
  out_txt <-  pandoc_output_txt
} 
  
out_txt
}


add_text_links <- function (

txt = paste("(link only accessible from KWB intranet",
            "with Firefox in case workflow defined [here](#firefox-local-files)",
            "is followed!).")
) {
add_text(pandoc_output_txt = txt)
}


add_chapter_firefox_local_files <- function (
txt = sprintf("%s\n\n%s\n\n%s\n\n%s\n\n", 
"## How to open local file links in Firefox (>= v57) {#firefox-local-files}", 
"For opening the local file links in Firefox (>= v57), you either need to:",
paste0("   - Install the Firefox plugin [Local Filesystem Links]", 
"(https://addons.mozilla.org/de/firefox/addon/local-filesystem-links/) or "),
"   - Copy the link manually and subsequently enter it in the browser")
) {

add_text(pandoc_output_txt = txt)
}

library(knitr)
library(magrittr)
library(ragg)
library(random.cdisc.data)

is_doconvable <- require("doconv") && locatexec::exec_available("word")
is_webshotable <- require("webshot2")

is_truthy <- function(x) {
  if (inherits(x, "try-error"))
    return(FALSE)
  if (!is.atomic(x))
    return(TRUE)
  if (is.null(x))
    return(FALSE)
  if (length(x) == 0)
    return(FALSE)
  if (all(is.na(x)))
    return(FALSE)
  if (is.character(x) && !any(nzchar(stats::na.omit(x))))
    return(FALSE)
  if (is.logical(x) && !any(stats::na.omit(x)))
    return(FALSE)
  return(TRUE)
}

process_link_preview_options  <- function(options){
  if(!is_truthy(options$link_preview)) return("")
  if(!options$link_preview) return("")
  if(!is_truthy(options$path_to_doc)) return("")

  png_file <- gsub("\\.(pptx|docx|pdf|html)$", ".png", options$path_to_doc)
  width <- options$width
  if(is.null(width)) {
    if(!grepl("\\.pptx$", options$path_to_doc)) width <- 650
    else width <- 750
  }

  if(!file.exists(png_file) && is_doconvable && grepl("\\.docx$", options$path_to_doc)) {
    doconv::to_miniature(filename = options$path_to_doc, fileout = png_file, width = width, row = options$row)
  } else if(!file.exists(png_file) && is_doconvable && grepl("\\.pdf$", options$path_to_doc)) {
    doconv::to_miniature(filename = options$path_to_doc, fileout = png_file, width = width, row = options$row)
  } else if(!file.exists(png_file) && is_doconvable && grepl("\\.pptx$", options$path_to_doc)) {
    doconv::to_miniature(filename = options$path_to_doc, fileout = png_file, width = width, row = options$row)
  } else if (!file.exists(png_file) && is_webshotable) {
    webshot2::webshot(options$path_to_doc, vwidth = width,
      file = png_file, cliprect = "viewport")
  }

  img_code <- sprintf("![](%s)\n\n", png_file)
  lnk_code <- sprintf("::: {.office-download-link}\n\n[%s](%s)\n\n:::\n\n", options$path_to_doc, options$path_to_doc)
  return(paste0(img_code, lnk_code))
}


opts_chunk$set(
  echo = TRUE,
  fig.path = "static/img/figs/",
  dev="ragg_png",
  message = FALSE,
  dpi = 150,
  comment = NA)

knit_hooks$set(link_preview = function(before, options, envir) {
  if (!before && is_truthy(options$link_preview)){
    return(process_link_preview_options(options))
  }
})


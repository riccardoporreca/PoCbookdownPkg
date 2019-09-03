#' Render Site
#'
#' Function that would create website using bookdown::render_book.
#'
#' @param output_dir string indicating directory where to render html files for website. Default is "_site".
#' @param ... additional arguments to be passed to bookdown::render_book .
#'
#' @export
render_site <- function(..., output_dir = '_site') {
  # absolute path of output_dir (which must exist)
  message(getwd())
  message(output_dir)
  message(dir.create(output_dir, recursive = TRUE, showWarnings = FALSE))
  output_dir <- normalizePath(output_dir)
  message(output_dir)
  message(system.file('site', package = 'PoCbookdownPkg'))
  message(dir.exists(system.file('site', package = 'PoCbookdownPkg')))
  toString(list.files(system.file('site', package = 'PoCbookdownPkg', full.names = TRUE)))
  input_dir <- system.file('site', package = 'PoCbookdownPkg')
  #restore_dir <- setwd(input_dir) # returns the wd before the call
  #on.exit(setwd(restore_dir))
  message(setwd(input_dir))
  bookdown::render_book(".", output_dir = output_dir, ...)
}

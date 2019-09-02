#' Date and Time
#'
#' use Sys.time()
#'
#' @return character string with date and time
#' @export
get_date_time <- function() {
  as.character(Sys.time())
}

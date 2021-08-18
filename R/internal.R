#' Split line breaks into a vector
#'
#' @note Updated 2021-08-18.
#' @noRd
.splitLineBreaks <- function(x) {
    if (!any(grepl(pattern = "\n", x = x))) {
        return(x)
    }
    x <- strsplit(x = x, split = "\n", fixed = TRUE)
    x <- unlist(x, recursive = TRUE, use.names = FALSE)
    x
}

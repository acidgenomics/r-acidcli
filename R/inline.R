#' Convert input to inline variable string
#'
#' @note Updated 2021-01-10.
#' @export
#'
#' @param x `character`.
#' @param n `integer(1)` or `Inf`.
#'   Maximum number of elements to include.
#'
#' @return `character(1)`.
#'
#' @examples
#' x <- c("aaa", "bbb", "ccc", "ddd")
#' x <- toVarString(x, n = 3L)
#' x
toVarString <- function(x, n = Inf, class = "var") {
    x <- head(x, n = n)
    x <- paste0("{.", class, " ", x, "}")
    x <- paste(x, collapse = ", ")
    x
}

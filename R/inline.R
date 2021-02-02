#' Convert input to inline class string
#'
#' @note Updated 2021-02-02.
#' @export
#'
#' @param x `character`.
#' @param n `integer(1)` or `Inf`.
#'   Maximum number of elements to include.
#' @param class `character(1)`.
#'   Inline style class.
#'
#' @return `character(1)`.
#'
#' @examples
#' x <- c("aaa", "bbb", "ccc", "ddd")
#' x <- toInlineString(x, n = 3L)
#' x
toInlineString <- function(x, n = Inf, class = "var") {
    assert(
        isCharacter(x),
        isInt(n),
        isString(class)
    )
    truncate <- length(x) > n
    x <- head(x, n = n)
    x <- paste0("{.", class, " ", x, "}")
    x <- paste(x, collapse = ", ")
    if (isTRUE(truncate)) {
        x <- paste0(x, "...")
    }
    x
}

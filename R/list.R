#' Lists
#'
#' @name list
#' @note Updated 2021-01-04.
#'
#' @param x `character(1)`.
#'   Text to be displayed as list items.
#'
#' @examples
#' dl(c(a = "AAA", b = "BBB"))
#' ul(c("Item 1", "Item 2"))
NULL



#' @rdname list
#' @export
dl <- function(x) {
    stopifnot(
        is.character(x),
        isTRUE(nzchar(names(x)))
    )
    cli_dl(x)
    invisible(x)
}



#' @rdname list
#' @export
ol <- function(x) {
    stopifnot(is.character(x))
    indent <- 4L
    cli_div(theme = list(body = list("margin-left" = indent)))
    cli_ol(items = x)
    cli_end()
    invisible(x)
}



#' @rdname list
#' @export
ul <- function(x) {
    stopifnot(is.character(x))
    indent <- 4L
    cli_div(theme = list(body = list("margin-left" = indent)))
    cli_ul(items = x)
    cli_end()
    invisible(x)
}

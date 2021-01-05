#' Lists
#'
#' @name list
#' @note Updated 2021-01-04.
#'
#' @param x `character`.
#'
#' @return Console output, with invisible return of `x` input.
#'
#' @examples
#' dl(c(a = "AAA", b = "BBB"))
#' ol(c("Item 1", "Item 2"))
#' ul(c("Item 1", "Item 2"))
NULL



#' @rdname list
#' @export
dl <- function(x) {
    stopifnot(
        is.character(x),
        isTRUE(all(nzchar(names(x))))
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

#' Lists
#'
#' @name list
#' @note Updated 2021-02-02.
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
    assert(
        isCharacter(x),
        hasNames(x)
    )
    indent <- 4L
    cli_div(theme = list(body = list("margin-left" = indent)))
    cli_dl(items = x)
    cli_end()
    invisible(x)
}



#' @rdname list
#' @export
ol <- function(x) {
    assert(isCharacter(x))
    indent <- 4L
    cli_div(theme = list(body = list("margin-left" = indent)))
    cli_ol(items = x)
    cli_end()
    invisible(x)
}



#' @rdname list
#' @export
ul <- function(x) {
    assert(isCharacter(x))
    indent <- 4L
    cli_div(theme = list(body = list("margin-left" = indent)))
    cli_ul(items = x)
    cli_end()
    invisible(x)
}

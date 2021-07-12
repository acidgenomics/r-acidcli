#' Signal an error, warning, or message with cli formatting
#'
#' @name abort
#' @note Updated 2021-07-12.
#'
#' @param x `character`.
#'
#' @return Console output, with invisible return of `x` input.
#'
#' @seealso
#' - [cli::cli_abort()].
#' - [cli::cli_inform()].
#' - [cli::cli_warn()].
#'
#' @examples
#' x <- "hello world"
#' try({
#'     abort(x)
#' })
#' try({
#'     warn(x)
#' })
#' inform(x)
NULL



## NOTE Consider adding support for "i" and "x" named arguments here.

#' @rdname abort
#' @export
abort <- function(x) {
    assert(isCharacter(x))
    x <- paste(x, collapse = "\n")
    cli_abort(x)
}



#' @rdname abort
#' @export
inform <- function(x) {
    assert(isCharacter(x))
    lapply(X = x, FUN = cli_inform)
    invisible(x)
}



#' @rdname abort
#' @export
warn <- function(x) {
    assert(isCharacter(x))
    lapply(X = x, FUN = cli_warn)
    invisible(x)
}

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



#' @rdname abort
#' @export
abort <- function() {
}



#' @rdname abort
#' @export
inform <- function() {
}



#' @rdname abort
#' @export
warn <- function() {
}

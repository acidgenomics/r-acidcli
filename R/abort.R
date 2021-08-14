#' Signal an error, warning, or message with cli formatting
#'
#' @name abort
#' @note Updated 2021-08-13.
#'
#' @param x `character` or `condition` (i.e. returned from `stop` or `warning`).
#' @param `call` `logical(1)`.
#'   Include call information in the return message.
#'
#' @return Console output, with invisible return of `x` input.
#'
#' @seealso
#' - [cli::cli_abort()], [cli::cli_inform()], [cli::cli_warn()].
#' - `simpleCondition()`, `simpleError()`, `simpleWarning()`, `simpleMessage()`.
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
abort <- function(x, call = TRUE) {
    traceLevel <- ifelse(test = call, yes = "full", no = "none")
    options("rlang_backtrace_on_error" = traceLevel)
    if (is(x, "condition")) {
        x <- x[["message"]]
    }
    assert(isCharacter(x))
    x <- paste(x, collapse = "\n")
    cli_abort(x)
}



#' @rdname abort
#' @export
inform <- function(x) {
    if (is(x, "condition")) {
        x <- x[["message"]]
    }
    assert(isCharacter(x))
    lapply(X = x, FUN = cli_inform)
    invisible(x)
}



#' @rdname abort
#' @export
warn <- function(x) {
    if (is(x, "condition")) {
        x <- x[["message"]]
    }
    assert(isCharacter(x))
    lapply(X = x, FUN = cli_warn)
    invisible(x)
}

#' Signal an error, warning, or message with cli formatting
#'
#' @name abort
#' @note Updated 2022-10-27.
#'
#' @param x `character` or `condition` (i.e. returned from `stop` or `warning`).
#'
#' @param call `logical(1)`.
#' Include call information in the return message.
#'
#' @return Console output, with invisible return of `x` input.
#'
#' @seealso
#' - `cli::cli_abort()`.
#' - `cli::cli_inform()`.
#' - `cli::cli_warn()`.
#' - `simpleCondition()`.
#' - `simpleError()`.
#' - `simpleWarning()`.
#' - `simpleMessage()`.
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
    traceLevel <- ifelse(
        test = call,
        yes = "full",
        no = "none"
    )
    options("rlang_backtrace_on_error" = traceLevel) # nolint
    if (is(x, "condition")) {
        x <- x[["message"]]
    }
    assert(isCharacter(x))
    x <- .splitLineBreaks(x)
    cli_abort(x, call = NULL)
}



#' @rdname abort
#' @export
inform <- function(x) {
    if (is(x, "condition")) {
        x <- x[["message"]]
    }
    assert(isCharacter(x))
    x <- .splitLineBreaks(x)
    cli_inform(x)
    invisible(x)
}



#' @rdname abort
#' @export
warn <- function(x) {
    if (is(x, "condition")) {
        x <- x[["message"]]
    }
    assert(isCharacter(x))
    x <- .splitLineBreaks(x)
    cli_warn(x)
    invisible(x)
}

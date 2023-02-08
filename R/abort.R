#' Signal an error, warning, or message with cli formatting
#'
#' @name abort
#' @note Updated 2023-02-08.
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
    if (is(x, "condition")) {
        x <- x[["message"]]
    }
    assert(isCharacter(x))
    x <- .splitLineBreaks(x)
    traceLevel <- ifelse(
        test = call,
        yes = "full",
        no = "none"
    )
    options("rlang_backtrace_on_error" = traceLevel) # nolint
    args <- list("message" = format_message(x))
    if (isFALSE(call)) {
        args <- append(args, list("call" = NULL))
    }
    do.call(what = rlang::abort, args = args)
}



#' @rdname abort
#' @export
inform <- function(x) {
    if (is(x, "condition")) {
        x <- x[["message"]]
    }
    assert(isCharacter(x))
    x <- .splitLineBreaks(x)
    rlang::inform(format_message(x))
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
    rlang::warn(format_message(x))
    invisible(x)
}

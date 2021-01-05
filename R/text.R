#' CLI text
#'
#' @name text
#' @note Exporting `txt` instead of `text` here, to avoid masking `stats::text`.
#' @note Updated 2020-01-05.
#'
#' @examples
#' txt("hello world")
#' verbatim("hello world")
NULL



#' @describeIn text Print to screen, wrapping to screen with automatically.
#' @export
txt <- function(x) {
    stopifnot(.isString(x))
    cli_text(x)
}



#' @describeIn text Print to screen, without any automatic wrapping.
#' @export
verbatim <- function(x) {
    stopifnot(.isString(x))
    cli_verbatim(x)
}

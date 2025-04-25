#' CLI text
#'
#' @name text
#' @note Updated 2020-02-02.
#'
#' @param x `character`.
#'
#' @return Console output, with invisible return of `x` input.
#'
#' @examples
#' ## Wrapping
#' txt(c("hello", " world"))
#'
#' ## No wrapping
#' verbatim(c("hello", "world"))
NULL


#' @describeIn text Print to screen, wrapping to screen with automatically.
#' Exporting `txt` instead of `text` here, to avoid masking `stats::text`.
#' @export
txt <- function(x) {
    assert(isCharacter(x))
    cli_text(x)
    invisible(x)
}


#' @describeIn text Print to screen, without any automatic wrapping.
#' @export
verbatim <- function(x) {
    assert(isCharacter(x))
    cli_verbatim(x)
    invisible(x)
}

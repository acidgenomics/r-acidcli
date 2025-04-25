#' Separator bar
#'
#' Maximum of 72 characters wide.
#'
#' @details
#' Bioconductor HTML vignettes don't render correctly when printing > 76
#' characters, even though the default width is set at 80.
#'
#' @export
#' @note Updated 2021-02-02.
#'
#' @param sep `character(1)`.
#' Separator character.
#'
#' @param times `integer(1)`.
#' Number of times to repeat.
#'
#' @return `character(1)`.
#'
#' @examples
#' separator(sep = "=", times = 10L)
separator <- function(
    sep = "=",
    times = min(c(
        getOption(x = "width", default = 72L),
        72L
    ))
) {
    assert(
        isString(sep),
        nchar(sep) == 1L,
        isInt(times)
    )
    ## nolint start
    paste(
        rep(x = sep, times = times),
        sep = "",
        collapse = ""
    )
    ## nolint end
}

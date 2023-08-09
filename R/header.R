#' Header level
#'
#' @name header
#' @note Updated 2023-08-09.
#'
#' @param x `character`.
#'
#' @return Console output, with invisible return of `x` input.
#'
#' @seealso
#' - `cli::cli_h1()`.
#' - `cli::cli_h2()`.
#' - `cli::cli_h3()`.
#'
#' @examples
#' h1("Level 1")
#' h2("Level 2")
NULL



#' Internal header generator
#'
#' @note Updated 2022-10-20.
#' @noRd
.h <- function(x, level) {
    assert(isCharacter(x))
    prefix <- magenta(paste0(
        rep(
            x = ifelse(
                test = is_utf8_output(),
                yes = "\U2500",
                no = "#"
            ),
            times = level
        ),
        collapse = ""
    ))
    lapply(
        X = x,
        FUN = function(x) {
            txt(paste0(prefix, " ", x, "\n"))
        }
    )
    invisible(x)
}



#' @rdname header
#' @export
h1 <- function(x) {
    sep <- paste0(
        rep(
            x = ifelse(
                test = is_utf8_output(),
                yes = "\U2500",
                no = "="
            ),
            times = getOption("width")
        ),
        collapse = ""
    )
    verbatim(paste0("\n", cyan(sep), "\n"))
    lapply(
        X = x,
        FUN = function(x) {
            txt(paste0(x, "\n"))
        }
    )
    verbatim(paste0(cyan(sep), "\n"))
}



#' @rdname header
#' @export
h2 <- function(x) {
    .h(x = x, level = 2L)
}



#' @rdname header
#' @export
h3 <- function(x) {
    .h(x = x, level = 3L)
}



#' @rdname header
#' @export
h4 <- function(x) {
    .h(x = x, level = 4L)
}



#' @rdname header
#' @export
h5 <- function(x) {
    .h(x = x, level = 5L)
}



#' @rdname header
#' @export
h6 <- function(x) {
    .h(x = x, level = 6L)
}



#' @rdname header
#' @export
h7 <- function(x) {
    .h(x = x, level = 7L)
}

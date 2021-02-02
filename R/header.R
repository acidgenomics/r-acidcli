#' Header level
#'
#' @name header
#' @note Updated 2021-02-02.
#'
#' @param x `character`.
#'
#' @return Console output, with invisible return of `x` input.
#'
#' @seealso
#' - [cli::cli_h1()], [cli::cli_h2()], [cli::cli_h3()].
#'
#' @examples
#' h1("Level 1")
#' h2("Level 2")
NULL



#' Header emoji
#'
#' Currently using test tube.
#'
#' Alternates:
#' - `\U1F422`: turtle (for koopa)
#'
#' @note Updated 2021-01-04.
#' @noRd
.emoji <- "\U1F9EA"



#' Internal header generator
#'
#' @note Updated 2021-02-02.
#' @noRd
.h <- function(x, level) {
    assert(isCharacter(x))
    arrow <- magenta(paste0(paste0(rep("=", level), collapse = ""), ">"))
    lapply(
        X = x,
        FUN = function(x) {
            txt(paste0(.emoji, " ", arrow, " ", x, "\n"))
        }
    )
    invisible(x)
}



#' @rdname header
#' @export
h1 <- function(x) {
    verbatim("\n")
    .h(x = x, level = 1L)
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

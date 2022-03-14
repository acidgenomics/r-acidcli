## https://cli.r-lib.org/reference/inline-markup.html
## Updated 2021-09-08.
.inlineClasses <- c(
    "arg", # for a function argument.
    "cls", # for an S3, S4, R6 or other class name.
    "code", # for a piece of code.
    "dd", # is used for the descriptions in a definition list.
    "dt", # is used for the terms in a definition list.
    "email", # for an email address.
    "emph", # for emphasized text.
    "envvar", # for the name of an environment variable.
    "field", # for a generic field, e.g. in a named list.
    "file", # for a file name.
    "fun", # for a function name.
    "key", # for a keyboard key.
    "path", # for a path (essentially the same as file).
    "pkg", # for a package name.
    "strong", # for strong importance.
    "url", # for a URL.
    "val", # for a generic "value".
    "var" # for a variable name.
)



#' Convert input to inline class string
#'
#' @note Updated 2021-09-13.
#' @export
#'
#' @param x `character`.
#'
#' @param n `integer(1)` or `Inf`.
#' Maximum number of elements to include.
#'
#' @param class `character(1)`.
#' Inline style class.
#'
#' @return `character(1)`.
#'
#' @examples
#' x <- c("aaa", "bbb", "ccc", "ddd")
#' x <- toInlineString(x, n = 3L)
#' x
toInlineString <- function(x, n = 5L, class = "val") {
    assert(
        isCharacter(x),
        isInt(n),
        isPositive(n)
    )
    class <- match.arg(class, choices = .inlineClasses)
    truncate <- length(x) > n
    x <- unname(x)
    x <- head(x, n = n)
    x <- paste0("{.", class, " ", x, "}")
    x <- paste(x, collapse = ", ")
    if (isTRUE(truncate)) {
        x <- paste0(x, "...")
    }
    x
}

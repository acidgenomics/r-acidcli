#' Alert messages
#'
#' @name alert
#' @note Updated 2021-01-05.
#'
#' @param x `character`.
#'
#' @return Console output, with invisible return of `x` input.
#'
#' @seealso
#' - [cli::cli_alert()].
#' - [cli::cli_alert_info()].
#' - [cli::cli_alert_success()].
#' - [cli::cli_alert_warning()].
#'
#' @examples
#' x <- "hello world"
#' alert(x)
#' alertDanger(x)
#' alertInfo(x)
#' alertSuccess(x)
#' alertWarning(x)
NULL



#' @rdname alert
#' @export
alert <- function(x) {
    stopifnot(is.character(x))
    lapply(X = x, FUN = cli_alert)
    invisible(x)
}



#' @rdname alert
#' @export
alertDanger <- function(x) {
    stopifnot(is.character(x))
    lapply(X = x, FUN = cli_alert_danger)
    invisible(x)
}



#' @rdname alert
#' @export
alertInfo <- function(x) {
    stopifnot(is.character(x))
    lapply(X = x, FUN = cli_alert_info)
    invisible(x)
}



#' @rdname alert
#' @export
alertSuccess <- function(x) {
    stopifnot(is.character(x))
    lapply(X = x, FUN = cli_alert_success)
    invisible(x)
}



#' @rdname alert
#' @export
alertWarning <- function(x) {
    stopifnot(is.character(x))
    lapply(X = x, FUN = cli_alert_warning)
    invisible(x)
}

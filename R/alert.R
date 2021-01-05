#' Allert messages
#'
#' @name alert
#' @note Updated 2021-01-05.
#'
#' @seealso
#' - [cli::cli_alert()].
#' - [cli::cli_alert_info()].
#' - [cli::cli_alert_success()].
#' - [cli::cli_alert_warning()].
NULL



#' @rdname alert
#' @export
alert <- function(x) {
    stopifnot(.isString(x))
    cli_alert(x)
    invisible(x)
}



#' @rdname alert
#' @export
alertInfo <- function(x) {
    stopifnot(.isString(x))
    cli_alert_info(x)
    invisible(x)
}



#' @rdname alert
#' @export
alertSuccess <- function(x) {
    stopifnot(.isString(x))
    cli_alert_success(x)
    invisible(x)
}



#' @rdname alert
#' @export
alertWarning <- function(x) {
    stopifnot(.isString(x))
    cli_alert_warning(x)
    invisible(x)
}

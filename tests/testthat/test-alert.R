context("alert")

test_that("alert", {
    for (fun in list(
        alert,
        alertDanger,
        alertInfo,
        alertSuccess,
        alertWarning
    )) {
        expect_message(
            object = fun(c("XXX", "YYY")),
            regexp = "XXX"
        )
    }
})

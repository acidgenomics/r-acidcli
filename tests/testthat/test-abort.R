context("abort")

test_that("abort", {
    expect_error(
        object = abort(c("XXX", "YYY")),
        regexp = "XXX"
    )
    expect_error(
        object = abort(simpleError("XXX")),
        regexp = "XXX"
    )
})

test_that("inform", {
    expect_message(
        object = inform(c("XXX", "YYY")),
        regexp = "XXX"
    )
    expect_message(
        object = inform(simpleError("XXX")),
        regexp = "XXX"
    )
})

test_that("warn", {
    expect_warning(
        object = warn(c("XXX", "YYY")),
        regexp = "XXX"
    )
    expect_warning(
        object = warn(simpleError("XXX")),
        regexp = "XXX"
    )
})

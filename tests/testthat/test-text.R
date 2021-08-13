context("text")

test_that("text", {
    expect_message(
        object = txt(c("XXX", "YYY")),
        regexp = "XXXYYY"
    )
    expect_message(
        object = verbatim(c("XXX", "YYY")),
        regexp = "XXX\nYYY"
    )
})

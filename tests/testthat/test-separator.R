test_that("separator", {
    expect_identical(
        object = separator(sep = "=", times = 10L),
        expected = "=========="
    )
})

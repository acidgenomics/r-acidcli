context("inline")

test_that("toInlineString", {
    expect_identical(
        object = toInlineString(
            x = c("aaa", "bbb"),
            class = "var"
        ),
        expected = "{.var aaa}, {.var bbb}"
    )
})

context("inline")

test_that("toInlineString", {
    expect_identical(
        object = toInlineString(
            x = c("aaa", "bbb"),
            class = "var"
        ),
        expected = "{.var aaa}, {.var bbb}"
    )
    expect_identical(
        object = toInlineString(
            x = c("aaa", "bbb", "ccc"),
            n = 2L
        ),
        expected = "{.var aaa}, {.var bbb}..."
    )
})

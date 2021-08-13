context("list")

test_that("definition list", {
    expect_message(
        object = dl(c(
            "aaa" = "bbb",
            "ccc" = "ddd"
        )),
        regexp = "aaa"
    )
})

test_that("ordered, unordered list", {
    for (fun in list(
        ol,
        ul
    )) {
        expect_message(
            object = fun(c("XXX", "YYY")),
            regexp = "XXX"
        )
    }
})

test_that("header", {
    for (fun in list(
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        h7
    )) {
        expect_message(
            object = fun(c("XXX", "YYY")),
            regexp = "XXX"
        )
    }
})

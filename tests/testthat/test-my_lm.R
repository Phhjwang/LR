test_that("test my LR", {
  set.seed(123)
  data <- data.frame(
    x = rnorm(20),
    y = 5 * rnorm(20) -7
  )

  model <- my_lm(y ~ x, data)

  expect_true(length(model$coefficients) == 2)
  expect_true(is.numeric(model$fitted.values))
  expect_equal(length(model$fitted.values), nrow(data))
})

test_that("test my LR", {
  set.seed(2024)
  data <- data.frame(
    x = rnorm(10),
    y = 2 * rnorm(10) + 3
  )

  model <- my_lm(y ~ x, data)

  expect_true(length(model$coefficients) == 2)
  expect_true(is.numeric(model$fitted.values))
  expect_equal(length(model$fitted.values), nrow(data))
})

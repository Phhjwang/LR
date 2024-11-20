
#' Linear Regression
#'
#' This function implements a basic linear regression model.
#' @param formula A formula specifying the model.
#' @param data A data frame containing the variables in the model.
#' @return A list containing model coefficients and residuals.
#' @examples
#' data(mtcars)
#' fit <- my_lm(mpg ~ wt + hp, data = mtcars)
#' print(fit$coefficients)
my_lm <- function(formula, data) {
  matrix <- model.matrix(formula, data)
  Y <- model.response(model.frame(formula, data))
  coeff <- solve(t(matrix) %*% matrix) %*% t(matrix) %*% Y
  fitted <- matrix %*% coeff
  residuals <- Y - fitted
  return(list(coefficients = as.vector(coeff), residuals = residuals, fitted.values = fitted))

}


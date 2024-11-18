
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
  model_matrix <- model.matrix(formula, data)
  response <- model.response(model.frame(formula, data))
  coefficients <- solve(t(model_matrix) %*% model_matrix) %*% t(model_matrix) %*% response
  fitted_values <- model_matrix %*% coefficients
  residuals <- response - fitted_values
  return(list(coefficients = as.vector(coefficients), residuals = residuals, fitted.values = fitted_values))

}

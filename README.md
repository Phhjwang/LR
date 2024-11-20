
# LR

<!-- badges: start -->
<!-- badges: end -->

The goal of LR is to provide a simple, customizable implementation of linear regression using basic R functionality. 
This package is ideal for educational purposes, helping users understand the mechanics of linear regression without relying on R's built-in lm function.

## Installation

You can install the development version of LR like so:

``` r
# Install devtools if not already installed
install.packages("devtools")

# Install the LR package from GitHub
devtools::install_github("phhjwang/LR")

```

## Example


``` r
library(LR)

# Example dataset
data(mtcars)

# Fit a linear regression model
fit <- my_lm(mpg ~ wt + hp, data = mtcars)

# Display the coefficients
print(fit$coefficients)

# Plot observed vs. fitted values
plot(mtcars$mpg, fit$fitted.values, 
     xlab = "Observed mpg", 
     ylab = "Fitted mpg", 
     main = "Observed vs. Fitted Values")
abline(0, 1, col = "red") # Reference line
```


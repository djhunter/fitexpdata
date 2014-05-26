DampedExp <- function(x) {
  list(predictors = list(beta = 1, omega = 1),
       variables = list(substitute(x)),
       term = function(predLabels, varLabels) {
         paste("exp(-", predLabels[1], "*", varLabels[1], 
               ")*cos(", predLabels[2], "*", varLabels[1], ")")
       })
}
class(DampedExp)  <- "nonlin"

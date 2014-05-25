time <- seq(0,3,0.03)
noise <- rnorm(101)*0.2
expdata <- 1.23*exp(-1.34*time)+1.56 + noise

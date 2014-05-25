time <- seq(0,3,0.03)
noise <- rnorm(101)*0.1
expdata <- 1.23*exp(-1.34*time)+1.56 + noise
library("gnm")
saved.fit <- gnm(expdata ~ 1 + Exp(1+time))
plot(time,expdata)
lines(time,as.double(saved.fit$fitted.values))


time <- seq(0,10,0.03)
noise <- rnorm(length(time))*0.1
dexpdata <- exp(-0.34*time)*cos(1.56*time) + noise
library("gnm")
saved.fit <- gnm(dexpdata ~ DampedExp(time))
plot(time,dexpdata)
lines(time,as.double(saved.fit$fitted.values))


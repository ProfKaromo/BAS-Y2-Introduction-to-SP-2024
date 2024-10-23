#Density and Distribution Functions
set.seed(2024)
#Random Numbers
#Discrete distributions
#Binomial
xbin <- rbinom(5,10,0.5)
xbin
#POison
xpois <- rpois(5,7)
xpois

#Continous distributions
#Uniform
xunif <- runif(5,20,50)
xunif
#Beta
xbeta <- rbeta(5,0.4,0.9)
xbeta
#Gamma
xgamma <- rgamma(5,0.8,0.2)
xgamma
#Chisq
xchi <- rchisq(5,4)
xchi
#Exponential
xexpo <- rexp(5,0.5)
xexpo
#Student t
xt <- rt(5,20)
xt
#Weibull
xweibul <- rweibull(5,0.6,0.3)
xweibul
#Hypergeometric
xhyper <- rhyper(25,10,5,3)
xhyper

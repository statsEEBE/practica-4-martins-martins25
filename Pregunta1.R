#binomial    f(x) = dbinom(a,n,p)   F(x) = pbinom(a,n,p)
#binomial negativa p(x=a) = dnbinom(a,r,p) 

x <- 0:50
fx <- dpois(x, 25)


plot(x, fx, col = 'red')
lines(x, fx, type = "h", col = 'red')

#prob 10 llamadas:
dpois(10,25)

#prob. 30 llamadas
dpois(30,25)
exp(-25)*25^30/factorial(30)

#P(X<=30)
ppois(30,25)

#finció F

plot(x, ppois(x,25), col = 'red')
lines(x, ppois(x,25), type = "s", col = 'red')

#P(X>=30)
1-ppois(29,25)


# 0,033 hores entre 2 trucades: 0

# almenys 0,052h entre 2 trucades
1-pexp(0.052,25)

#temps d'espera màxim 75% de les trucades
qexp(0.75,25)

#500000 simulacions entre dues trucades. Mitjana de temps entre 2 trucades
simul <- rexp(500000,25)
mean(simul)











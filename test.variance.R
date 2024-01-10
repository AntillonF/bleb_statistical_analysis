# script to look at whether two groups have different variance

# lets install and load car
install.packages("car")
library(car)

# read in our data
dat <- read.csv("Statistical analysis data_FrankieAntillon.csv")

# set up data in the format needed
# response variable bleb location
resp <- c(dat$E, dat$A2, dat$SglM, dat$SglPP7,
          dat$L, dat$SglKU1, dat$SglHgal, dat$SglPRR1)

# groups to be compared
pred <- rep(c("grp1", "grp2"), each=100)

# get description of levenes test
help(leveneTest)

# run levene test (parametric)
leveneTest(resp~pred)
# run non-parametric alternative
fligner.test(x=resp, g=pred)

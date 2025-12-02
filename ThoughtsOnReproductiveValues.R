L <- matrix(
  c(0, 1 , 5, 0.3, 0, 0, 0, 0.5, 0), # we construct a matrix by giving all its entries in a single vector, which we then split into...
  nrow = 3, # ...this many rows and...
  ncol = 3, # ...and this many columns
  byrow = T) # fill matrix by rows

L # print the matrix

N.0 <- c(0, 0, 1) # creates vector N.0 of initial densities
N.1 <- L %*% N.0 # produces the vector N.1 by multiplying L with N.0. Note that %*% indicates matrix multiplication in R
N.1 # show N.1

length <- 50 # length of the time series
time.series <- matrix(N.0, nrow = 3) # creates a matrix with three rows, called time.series, with N.0 in the first column. This is used to store the time series.

for (i in 1:length){# iterates the multiplication L.N(t) as often as specified by the parameter length
  time.series <- cbind(time.series, L %*% time.series[ , i]) # executes multiplication of the matrix L with current population vector and stores the result as a new column to the matrix time.series
}

matplot(0:length, t(time.series), type="l", lty=1:3, col = 1, ylab = "density", xlab = "time") # plots the time.series for each age-class, note that we have to transpose the matrix time.series in order to obtain the correct plot
legend("topleft", legend = c("age 1", "age 2", "age 3"), lty = 1:3, col = 1, bty = "N") # adds a legend

sum(time.series[ , 51])

c(1.305/1.305, 4.43/1.305, 6.41/1.305)

library(popbio)
eigen.analysis(L)
Lin

time.series

Lin %*% Lin %*% Lin %*% Lin %*% Lin %*% Lin %*% Lin %*% Lin %*% Lin %*% Lin %*% time.series[ , 11]

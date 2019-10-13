# Add two numbers
add2 <- function(x, y) {
  x + y
}

# Return the values in a vector above 10
above10 <- function(x) {
  use <- x > 10
  x[use]
}

# Return the values in a vector above n
# Default n=12
above <- function(x, n = 10) {
  use <- x > n
  x[use]
}

#Calculate the mean of a column
columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for (i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

#Extend an existing function or tweak it
myplot <- function(x, y, type = "l", ...) {
  plot(x, y, type = type, ...)
}

#Defining a function within another function
make.power <- function(n) {
  pow <- function(x) {
    x ^ n
  }
  pow
}
# Take a CSV file and extract numerical columns and compute the variance and covariance matrix
housing = read.csv("Housing.csv", header = TRUE)
encoded_furnishingstatus <- model.matrix(~furnishingstatus-1, data=housing)
housing <- cbind(housing, encoded_furnishingstatus)
housing <- subset(housing, select = -c(furnishingstatus))

housing$mainroad <- ifelse(housing$mainroad == "yes", 1, 0)
housing$guestroom <- ifelse(housing$guestroom == "yes", 1, 0)
housing$basement <- ifelse(housing$basement == "yes", 1, 0)
housing$hotwaterheating <- ifelse(housing$hotwaterheating == "yes", 1, 0)
housing$airconditioning <- ifelse(housing$airconditioning == "yes", 1, 0)
housing$prefarea <- ifelse(housing$prefarea == "yes", 1, 0)

matrix <- data.matrix(housing)

# Variance-Covariance Matrix for the matrix
nrows = nrow(matrix)
ncols = ncol(matrix)

print("The Matrix is: ")
print(matrix)
print("The one_matrix is: ")
one <- matrix(c(rep(1,nrows)), nrow=nrows, ncol=nrows)
print(one)
print("The deviation matrix is: ")
m <- matrix - (one %*% (matrix/nrows))
print(m)
print("The deviation score sums of squares matrix is: ")
m <- t(m) %*% m
print(m)
print("The variance-covariance matrix is: ")
V <- m/nrows
V
print("Cross-Verification with the cov() function:")
cov(matrix)

# Correlation Matrix
print("The square_root matrix is: ")
sqrt_matrix = diag(1/sqrt(diag(V)))
corr_matrix = sqrt_matrix %*% V %*% sqrt_matrix
print("The correlation matrix is: ")
corr_matrix

#Confirmation with cor() function
cor(matrix)

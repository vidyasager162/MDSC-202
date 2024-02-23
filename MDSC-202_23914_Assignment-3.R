# Variance-Covariance Matrix for a matrix
nrows = 15
ncols = 2

print("The Matrix is: ")
A <- matrix(sample(1:10, nrows*ncols, replace = TRUE), nrow=nrows, ncol=ncols)
A
print("The one_matrix is: ")
one <- matrix(c(rep(1,nrows)), nrow=nrows, ncol=nrows)
one
print("The deviation matrix is: ")
a <- A - (one %*% (A/nrows))
a
print("The deviation score sums of squares matrix is: ")
a <- t(a) %*% a
a
print("The variance-covariance matrix is: ")
V <- a/nrows
V
print("Cross-Verification with the cov() function:")
cov(A)

# Correlation Matrix
print("The square_root matrix is: ")
sqrt_matrix = diag(1/sqrt(diag(V)))
corr_matrix = sqrt_matrix %*% V %*% sqrt_matrix
print("The correlation matrix is: ")
corr_matrix

#Confirmation with cor() function
cor(A)
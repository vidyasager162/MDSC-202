A <- matrix(data = c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow = TRUE)
A

eigen_values <- eigen(A)$values
eigen_vectors <- eigen(A)$vectors

eigen_values
eigen_vectors
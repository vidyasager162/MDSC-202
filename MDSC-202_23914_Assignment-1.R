A <- matrix(data=c(-3,2,893,0.17),nrow=2,ncol=2)
A

#By Default, R reads by column.
matrix(data = c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)
matrix(data = c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=FALSE)

# rbind - Arrange in rows, cbind - Arrange in columns
rbind(1:3,4:6)
cbind(c(1,4),c(2,5),c(3,6))

# Printing the dimensions of a matrix
mymat <- rbind(c(1,3,4),5:3,c(100,20,90),11:13)
dim(mymat)
nrow(mymat)
ncol(mymat)
dim(mymat)[2]

# Indexing the elements of a matrix
A <- matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
A

diag(x=A)
A[3,2]
A[,2]
A[2:3,]
A[,c(3,1)]
A[c(3,1),2:3]

# Manipulating a Matrix
A[,-2]
A[-1,3:2]
A[-1,-2]
A[-1,-c(2,3)]

B <- A
B
B[2,] <- 1:3
B
B[c(1,3),2] <- 900
B
B[,3] <- B[3,]
B

A
B[c(1,3),c(1,3)] <- c(-7,7)
B
B[c(1,3),2:1] <- c(65,-65,88,-88)
B
diag(x=B) <- rep(x=0,times=3)
B

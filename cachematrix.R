## Put comments here that give an overall description of what your
## functions do

#The following function takes a matrix as an input and calculates the inverse of that matrix.
#It can also get the value of the matrix itself and cache the values of it's own objects.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  MatrixValue = function(y)  #To set the value of the matrix
  {
    x<<-y
    inverseMatrix<- NULL
  }
  
  getMatrix<- function()x #To get the value of the matrix
  setInverse<- function(inverse) inverseMatrix<<-inverse #To set the value of the invertible matrix
  getInverse<- function() inverseMatrix
  
  list(getMatrix, setMatrix, getInverse, setInverse)
}


## Write a short comment describing this function

#The following function has to take the previous function makeCacheMatrix as input and returns 
#the object in the cache, if present. If not, it gets the original matrix and gets it's inverse
#using the solve function.



cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  MatrixInverse <- x$getinverse()
  if (is.null(MatrixInverse)) {   #Taking value from cache if not null.
    return (MatrixInverse)
  }
  OriginalMatrix<- x$getMatrix                   #If cache value is NULL, Get original matrix
  MatrixInverse<- solve(OriginalMatrix)          #Get inverse of Original matrix
  x$setInverse<- MatrixInverse                   #Set inverse of original matrix
  return (MatrixInverse)                         #return inverse value
  
}

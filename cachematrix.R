## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This first function, 'makeCacheMatrix' creates a matrix and contains a list of functions which allow to do
#1.set the value to a matrix
#2.get the matrix
#3.set inverse matrix
#4.get inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  

}


## Write a short comment describing this function
#The following finction allows to get the inverse matrix. However, it first checks if the inverse matrix has already been created. If yes, it gets the inverse matrix from the cache and skips the computation.
#If no, it computates the inverse matrix and sets the inverse matrix in the cach via the setinverse function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
  }

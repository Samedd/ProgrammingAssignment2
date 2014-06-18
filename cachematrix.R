## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(A = matrix()) { 
  I <- NULL
  set <- function(B) {
    A <<- B
    I <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) I <<- solve
  getinverse <- function() I
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}##This function creates a list that contains a function that sets the value of the
##matrix, gets it, sets the value of its inverse and gets it.


## Write a short comment describing this function

cacheSolve <- function(A, ...) {
  I <- A$getinverse()
  if(!is.null(A)) {
    message("getting cached data")
    return(A)
  }
  data <- x$get()
  I <- inverse(data, ...)
  A$setinverse(I)
  I
                                
        ## Return a matrix that is the inverse of 'x'
}##This function calculates the inverse of the matrix if it had not been already
##done, and returns it.

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    
    set <- function( matrix ) {
      m <<- matrix
      i <<- NULL
    }
    
get <- function() {
      m
    }
    setInverse <- function(inverse) {
      i <<- inverse
    }
    
    ## Method to get the inverse of the matrix
    getInverse <- function() {
      ## Return the inverse property
      i
    }
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}
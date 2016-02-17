## Put comments here that give an overall description of what your
## functions do

## function to set a new value for the matrix, x
## function to get a value for the matrix, x
## function to set the inverse
## function to get the inverse
## list at the end is the input for cacheSolve function

## This function creates a matrix that can cache its inverse


 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) m <<- inverse
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
          m <- x$getinv()
    if(!is.null(m)) {
        message("getting cached data")
       return(m)
   }
   data <- x$get()
    m <- solve(data, ...)
    x$setinv(m)
    m
}
        


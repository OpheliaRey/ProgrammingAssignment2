## This function is going to cache the inverse of a matrix
## so it can be recalled without being recomputed


makeCacheMatrix <- function(x = matrix()) {
  inv_x=NULL
    set <- function(y) {
        x <<- y
        inv_x <<- NULL
    }
    get <- function() x
    setinv <- function(inv) inv_x <<-inv
    getinv <- function(inv_x)
      list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## returns a matrix the inverse of x 

cacheSolve <- function(x, ...) {
  inv_x <- x$getinv()
  if(!is.null(inv_x)) {
      message("cached data")
      return(inv_x)
    }  
    data <- x$get()
    inv <- inv(data, ...)
    x$setinv(inv_x)
    inv_x
}
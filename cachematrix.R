## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ix<-NULL
  setMatrix <- function(y) {
    x <<- y
    ix <<- NULL 
  }
  getMatrix <- function() x
  setInverse <- function(inverse) ix <<- inverse
  getInverse <- function() ix
  list(setMatrix = setMatrix, getMatrix = getMatrix, setmean = setmean, getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ix <- x$getInverse()
        if(!is.null(ix)) {
          message("getting cached inverse matrix")
          return(ix)  
        }
        data <- x$getMatrix()
        ix <- solve(data)
        x$setInverse(ix)
        ix
        
}

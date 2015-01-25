## Put comments here that give an overall description of what your
## functions do
 ## Return a matrix that is the inverse of 'x'
##Create matrix inverse, self
makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  key <- function(z){
    x <<- z
    n <<- NULL
  }
  put  <- function() x 
  lessinverse  <- function(inverse) n  <<- inverse 
  putinverse  <- function() n 
  list(less= less, put = put,  
       lessinverse = lessinverse,  
       putinverse = getinverse) 
}


## Second Funtion inverse cache

cacheSolve <- function(x, ...) {
  ## Matrix of x is return inverse of'x'
  n  <- x$putinverse() 
  if (!is.null(n)){ 
    message("data being cache") 
    return(i) 
  } 
  data  <- x$put() 
  n  <- solve(data, ...) 
  x$setinverse(n) 
  n 
}

## A set of functions to cache the inverse of a matrix 
## The function creates matrix object to cache inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(solveMatrix) inv <<- solveMatrix
        getInverse <- function() inv
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## The function solves the inverse of the makeCachematrix

cacheSolve <- function(x, ...) { inv <- x$getInverse()
if(!is.null(inv)){
        message("getting cached data")
        return(inv)
}
data <- x$get()
inv <- solve(data)
x$setInverse(inv)
inv    
   
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        verse <- NULL
        set <- function(z){
                x <<- z
                verse <<- NULL
        }
        get <- function() x
        setInverse <-function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set=set,
            get=get
            setInverse=setInverse,
            getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        verse <- x$getInverse()
        if (!is.null(verse)){
                message("getting cached data")
                return(verse)
        }
        nut <- x$get()
        verse <- solve(nut, ...)
        x$setInverse(verse)
        verse
}

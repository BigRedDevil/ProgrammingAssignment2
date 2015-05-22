## makeCacheMatrix - given a matrix as an argument, returns a list which
## holds the matrix and its inverse


makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(y){
		x <<- y
		inverse <<- NULL
	}
	get <-function() x
	setinverse <- function(inv) inverse <<- inv
	getinverse <- function() inverse
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)

}

##cacheSolve - return the inverse of the matrix from cache if already
##computed. Else, compute the inverse and set it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		print("hello")
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}

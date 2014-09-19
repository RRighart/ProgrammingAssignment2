## Overall description # Ruthger Righart

## makeCacheMatrix creates a special "matrix", which sets/gets the value of the matrix and the ## inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

## This function puts the inverse matrix in the cache memory

cacheSolve <- function(x, ...) {
        v <- x$getsolve()
        if(!is.null(v)) {
                message("getting cached data")
                return(v)
        }
        data <- x$get()
        v <- solve(data, ...)
        x$setsolve(v)
        v
}

##

solve(x)



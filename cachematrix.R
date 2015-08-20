## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#this function sets and then retrieves the value of both:
#the matrix and the inverse matrix and then creates
#a complete list

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInv <- function(solve) inv <<- inverse  
        getInv <- function() inv
        list (set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

#this function inverts the matrix by using the:
#'makeCacheMatrix()' function
#It 1st checks to see if inverse matrix has already been calculated
#It then sets the new value of the matrix into cache
#It then outputs the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}

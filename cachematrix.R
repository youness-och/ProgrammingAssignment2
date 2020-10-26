## Put comments here that give an overall description of what your
## functions do
## the first function creates a special matrice object that can cache its inverse
## the second function do the inverse of the matrice given by the first function, if the inv is calculated we have no changes

## Write a short comment describing this function
## getting the special matrice

makeCacheMatrix <- function(x = matrix()) {
        
        invofx <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) invofx <<- inverse
        getinv <- function() invofx
        list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function
## computing the inverse matrice

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(invofx)){
                message("getting cached inverse matrice")
                return(invofx)
        }

        mat.data <- x$get()
        inv <- solve(mat.data, ...)
        x$setinv(invofx)
        return(invofx)
        
        ## Return a matrix that is the inverse of 'x'
}

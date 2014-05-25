## Put comments here that give an overall description of what your
## functions do vpreet comments

## Write a short comment describing this function

## Hi VPREET here
## What I found after going throug several rounds of discussion forrum topics is that TA saying
## just don't rry to solve the vecto inverse proble. BUTunderstand the mean problem and just change the apprppirate 
## valus for the vector problem
## I'm just doing that here


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## Hi VPREET here
## What I found after going throug several rounds of discussion forrum topics is that TA saying
## just don't rry to solve the vecto inverse proble. BUTunderstand the mean problem and just change the apprppirate 
## valus for the vector problem
## I'm just doing that here

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		   m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}

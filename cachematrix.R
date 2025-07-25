## Updates not loading so resubmitting here

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

## The answer is that the MakeCacheMatrix function will create a special "matrix" object
## that is able to cache its inverse (or reverse). 


## Write a short comment describing this function
cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'
}

## The answer is that CacheSolve calculates the inverse of the special "matrix" that is
## created by makeCacheMatrix. The cacheSolve function should get the
## inverse from the cache as long as the inverse was computed.


## Git Steps
## git status
## git add cachematrix.R
## git commit -m "Add cachematrix.R with caching functionality for matrix inversion"
## git push origin master

## More Git instructions
## git branch  # Check current branch
## git checkout -b master  # Create and switch to 'main' if it doesn't exist
## git push origin master  # Push current branch
## git push -u origin master  # Push to 'master' and set upstream

git push origin master
git push -u origin master

## Assignment 2 Prep
library("tidyverse")
}

## Set working directory
setwd("C:\\Users\\elisa\\OneDrive\\R Notes")

## Steps for Assignment 2
## Run first
makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

## Run second
cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}

## Run third
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Run fourth
cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}

## Run fifth
B <- matrix(c(1,2,3,4),2,2)
}

## Received error
specialMatrix <- makeCacheMatrix(matrix(c(2, 2, 3, 3), nrow = 2))

inverse1 <- cacheSolve(specialMatrix)
print(inverse1)

inverse2 <- cacheSolve(specialMatrix)
print(inverse2)

## Run sixth
solve(B)
}

## Answer for fifth and sixth step
[,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5

## Run seventh and eighth step
B1 <- makeCacheMatrix(B)
cacheSolve(B1)
}

## Answer for seventh and eighth step
[,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5

## Run ninth
matrix(c(2, 2, 3, 3), nrow = 2)

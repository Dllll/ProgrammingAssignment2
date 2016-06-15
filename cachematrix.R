## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function create a matrix object
makeCacheMatrix <- function(x = matrix()) {
	inv<-NULL
	set<-function(y){
		x<<-y
		inv<<-NULL
	}
	get<-function()x
	setInverse<-function(inverse)inv
	getInverse<-function()inv
	list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function
#This function computes the inverse of the matrix that is above
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getInverse()
        if (!is.NULL(inv)){
        	message("getting data")
        	return(inv)
        }
        mat<-x$get()
        inv<-solve(mat,...)
        x$setInverse(inv)
        inv
}

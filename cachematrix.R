## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
      # initialization
      inv_mat <- NULL
      
      # set method to assign values
      set <- function(matrix)
      {
            mat <<- matrix
            inv_mat <<- NULL
      }
      
      # get method to access matrix elements
      get <- function()
      {
            return(mat)
      }
      
      # set method to assign inverse of matrix 
      setinverse <- function(inverse)
      {
            inv_mat <<- inverse
      }
      
      # get method to access inverse matrix elements
      getinverse <- function()
      {
            return (inv_mat)
      }
      
      # return the list of methods
      return(list(set = set, get = get, setinverse = setinverse, getinverse = getinverse))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
      ## Return a matrix that is the inverse of 'x'
      inv_mat <- x$getinverse()
      
      # return the inverse if already existed
      if (!is.null(inv_mat))
      {
            message("getting cached data")
            return(inv_mat)
      }
      
      # get the matrix 
      mat <- x$get()
      
      # calculate the inverse
      inv_mat <- solve(data) %*% data 
      
      # set the inverse 
      x$setinverse(inv_mat)
      
      # return the matrix
      return(inv_mat)
      
}

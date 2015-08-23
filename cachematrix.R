## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix will take a square matrix and will cache the inerse of it.


makeCacheMatrix <- function(x = matrix()) {
Input_matrix_new<-x
if(nrow(Input_matrix)!=ncol(Input_matrix))
	{
	stop("Please Give me a Square one !")
	}

if((exists("Input_matrix_new")) && identical(Input_matrix_new,Input_matrix))
	{
	print("I believe the cache is already there for it. Hmm let me check!")
	if (exists("Inversed_matrix"))
	{
	print("See I told , its already there. Use it if you need")
	} else
	{
	print("Ohh! some how its not there. Let me cache the inverse again.")
	if(det(Input_matrix_new)!=0) 
	{
	Input_matrix<<-Input_matrix_new
	Inversed_matrix<<-solve(Input_matrix)
	}
	else
	{
	print("this matrix is not invertable. Sorry")
	}
	
	}
	} else {
	print("Its a new matrix.Let me cache the inverse.")
	
	#Check if the matrix is invertable or not.
	if(det(Input_matrix_new)!=0) {
	Input_matrix<<-Input_matrix_new
	Inversed_matrix<<-solve(Input_matrix)
	} else
	{
	print("this matrix is not invertable. Sorry")
	}
	}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
New_Input_matrix<-x
if(identical(Input_matrix,New_Input_matrix))
{
	if(exists("Inversed_matrix")){
	print("The chache is present")
	Inversed_matrix
	} else {print("The chache is not present")}
} else 
{ print("The chache is not present") }

}

Simpsons Composite Method
=========================
This program calculates the area under the curve using either the Simpson's 1/3 rule if there are three segments or the Simpson's Composite rule if there are greater thatn three arguments.
## Inputs
* `x` a matrix of x values of length N
* `y` a matrix of corresponding y values of length N 
## Outputs
* `I` the integration of the x and y matrix of values.

__Note:__ This program will use the trapezoidal rule to setimate the last segment if there are an uneven number of segments.
__Note:__ Program __WILL FAIL__ if there are greater than or less than 2 arguments or the lengths of the x and y matrices are not the same.

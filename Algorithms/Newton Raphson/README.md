Newton-Raphson Method
===================
This program estimates the root of a function using the Newton Raphson method
## Inputs
* `f` the function you wish to find the root of
* `xi` initial x value
* `iter` number of iterations desired
* `es` error desired
## Outputs
* `root` the root of the function
* `itermax` the max numbers of iterations used
* `ea` the error of the root

__Note:__ Method is prone to fail if xi is in a place where slope is near zero

__Note:__ If only two inputs are given, error defaults to .00001 and iterations default to 100

__Note:__ Program __WILL FAIL__ if there are less than two arguments

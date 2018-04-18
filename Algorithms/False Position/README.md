False Position
====
This algorithm determines the root of a function within an error and nuber of iterations provided by the user. the user also must provide a lower and upper x bracket. Next the algorithm uses the false position rule to calculate the root.
## Inputs
* `Function dependant on one variable `
* `Lower X position`
* `Upper X position`
* `Desired error`(optional)
* `Desired number of iterations`(optional)
## Outputs
* `Root`
* `f(x)`
* `Error`
* `Number of iterations`

__Note:__ This program will run slowly if the root is in a place where the slope is very close to zero

__Note:__ You can only input the first three inputs and the algorithm will default to an error of .00001% or 200 iterations

__Warning: The algorithm WILL BREAK if you put less than three arguments or greater than five arguments__

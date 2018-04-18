function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,iterMax)
%falsePosition, a function to estimate roots of a function
%   input the desired function, the lower x guess, the upper x guess and if
%   desired the %error (DEFAULTS TO 0.00001%) and the number of desired
%   iterations (DEFAULTS TO 200)    the function will then output the
%   estimate of the x value of the root, the value of the funtion at that
%   root, the percent error and the number of iterations through which
%   these solutions were arrived at.
tic
if nargin < 3 %check number of arguments
    error('please input a function, an x lower and an upper x value');
end

if nargin < 4%check number of argumentsif less than four set error to .00001 and iter to 200
   es = 0.00001;
   iterMax = 200; 
end

if nargin == 4%check number of arguments if  = 4 set iterations to 200
   iterMax = 200; 
end
root = xl;%set first root to lower x value to calculate original error
ea = 100;%set original error
iter = 0;%set iterations to zero
f = func;
if f(xl)*f(xu)>0
   error('please choose different upper and lower bounds such thath one is positiveand one is negative')
else
  
    while es < ea && iter<iterMax%run as long as the error and iterations are less than desired
    Rold = root;
    root = xu-((f(xu)*(xl-xu))/(f(xl)-f(xu)))%create new root
    if f(root)>0%if f(root) is less than zero, set as left bracket
        xl = root;
    elseif f(root) < 0%if f(root) is greater than zero, set as right bracket
        xu = root;
    end
    ea = abs((root-Rold)/root);%Calculate approximate error
    iter = iter+1;%iteratin count+ 1
    root = double(root)%display root as a decimal
    end
   toc 
end
end

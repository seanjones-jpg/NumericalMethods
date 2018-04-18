function [root,itermax,ea] = newtonraphson(f,xi,iter,es)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
itermax = 100;
ea=.000001;
iter=0
root = xi;
while iter<itermax || es>ea
Rold = root
root = xi-(integral(f(xi))/(f(xi)));
iter = iter + 1;
es = abs((root-Rold)/root)
root = double(root)
end
end


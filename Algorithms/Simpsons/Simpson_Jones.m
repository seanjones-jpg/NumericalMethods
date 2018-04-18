function I = Simpson_Jones(x,y)
%Simpson_Jones estimates the integral of a function by using a composite
%simpson rule and trapezoidal calc if necesary
%   Detailed explanation goes here
Lx=length(x); Ly=length(y);
[m,n]=size(x);
[M,N]=size(y);
if Lx ~= Ly%Checks length of input values
    error("please enter vlaues of even length")
end

if mod(length(x),2)==0%checks to see if even/odd number of segments
    t=0
    disp("using trapezoidal method for last term")
elseif mod(length(x),2)==1
    t=1;
end

D1= diff(x);D2= diff(D1);D3=D2-D2;

if isequal(D2,D3)==0
    error("x not evenly spaced")
else
    if Lx==3
       I = ((x(1,n)-x(1,1)))/(6)*(y(1,1)+4*y(N,M-1)+y(N,M))
    else
        if t==0
        Trap = ((x(1,n)-x(m,n-1))./2).*(y(M,N)+y(M,N-1));
        Yodd = y(1,3:2:N-3);
        Yeven = y(1,2:2:N-2);       
        elseif t==1
        Yodd = y(1,3:2:N-1);
        Yeven = y(1,2:2:N-1);        
        Trap=0;
        end
    Part1=((x(1,n)-x(1,1)))./(3*(Lx-1));
    Part2=(y(1,1)+4.*sum(Yodd)+2.*sum(Yeven)+y(1,N));     
    simp= Part1.*Part2+Trap
    end
end

end


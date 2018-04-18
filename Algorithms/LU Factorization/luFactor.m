function [L,U,P] = luFactor(A)
%Performs lu factorization on a square matrix
%   Input a square nxn matrix as: A=[n;n]
%   the function will then calculate L, U and P for the specified matrix
[m,n] = size(A);
if nargin <1;%checks too make sure a matrix has been assigned to A
    error('plese input a matrix')
end
if nargin>1;%checks to make sure only one value is assigned to A
    error('too many arguments')
end
if m~=n
    error('matrix must be square');
end
L=eye(n);%L starts as identity matrix
P=L;%P starts as identity matrix
U=A;%U brgins the same as A
for k=1:n%keeps track of which collumn opperations are being performed on
   [pivot m]= max(abs(U(k:n,k)));%tests which row has the highest absolute value
   m=m+k-1;%moves through the rows, testing the column value of each with m
   if m~=k%if the top column is not the greatest perform next code
       top=U(k,:);%assigns top column of upper matrix equal to U(k,:); or the k row
       U(k,:)=U(m,:);%sets k row equal to row with highest abs. value
       U(m,:)=top;%moves row with highest abs value to top
       top=P(k,:);%performs same operation on P matrix, thus tracking the row opperations
       P(k,:)=P(m,:);
       P(m,:)=top;
        if k >= 2
            top=L(k,1:k-1);%asigns first row operated on(not the 1 diagonal in identity matrix) to the top
            L(k,1:k-1)=L(m,1:k-1);%sets k row equal to row with highest abs. value
            L(m,1:k-1)=top;%moves row with highest abs value to the "top" first point below the 1 diagonal
        end
   end
   for j=k+1:n %evaluates all rows
   L(j,k)=U(j,k)/U(k,k);%%finds the factor with which to multiply to perform Gausian Elimination
   U(j,:)=U(j,:)-L(j,k)*U(k,:);%multiplies U matrix row j by value found in previous line
end
end


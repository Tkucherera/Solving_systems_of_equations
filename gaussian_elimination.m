%for a matrix with size n x n 

% A hilbert matix is a matrix whose values are in the form of unit frations
% as specified in the problem the values are given by the formula:
% H = 1/(i + j - 1)
% for a 2x2 matrix with the b matrix being 1 is given by 

a = [1,1/2,1/3,1/4,1/5,1/6,1/7,1/8,1/9,1/10;
    1/2,1/3,1/4,1/5,1/6,1/7,1/8,1/9,1/10,1/11;
    1/3,1/4,1/5,1/6,1/7,1/8,1/9,1/10,1/11,1/12;
    1/4,1/5,1/6,1/7,1/8,1/9,1/10,1/11,1/12,1/13;
    1/5,1/6,1/7,1/8,1/9,1/10,1/11,1/12,1/13,1/14;
    1/6,1/7,1/8,1/9,1/10,1/11,1/12,1/13,1/14,1/15;
    1/7,1/8,1/9,1/10,1/11,1/12,1/13,1/14,1/15,1/16;
    1/8,1/9,1/10,1/11,1/12,1/13,1/14,1/15,1/16,1/17;
    1/9,1/10,1/11,1/12,1/13,1/14,1/15,1/16,1/17,1/18;
    1/10,1/11,1/12,1/13,1/14,1/15,1/16,1/17,1/18,1/19;
    ];
b = [1;1;1;1;1;1;1;1;1;1];
n = 10;



% we need to create a U (upper triangle) matrix 


% step 1: loop such that l target all entries bellow the main diagonal
for j=1 : n-1
    % ensure that our leading main diagonal entry is not 0 
    if abs(a(i,j)) < eps; error('zero pivot encountered'); end
    %eliminate the entries below the first entry in column 1
    for i=j+1 : n
       mult = a(i,j)/a(j,j);
       for k = j+1: n
           a(i,k) = a(i,k) - mult*a(j,k);
       end
       b(i) = b(i) - mult*b(j);
    end
end 

%step 2 back substituion 
for i = n : -1 : 1
    for j = i+1 : n
        b(i) = b(i) - a(i,j)*x(j);
    end
    x(i) = b(i)/a(i,i);
end


%RESULT = x =

 %  1.0e+06 *

 %  -0.0000    0.0010   -0.0238    0.2402   -1.2610    3.7832   -6.7258    7.0004   -3.9377    0.9237
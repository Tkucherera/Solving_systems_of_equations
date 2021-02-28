% for solving an n x n matrix becz of IEEE there is some error that might
% occur in our answer this program will calculate this error

% first we a given a Matrix whose values are determined by 5/(i + 2j - 1)
% hence we will define this matrix first 

% second set the n = to the number of rows and columns needed l will do six

n = 6;
a =zeros(n);
for j=1: n
    for i=1:n
        a(i,j) = 5/(i + 2*j - 1); 
    end
end


% Using the formula used for solving systems of equations Ax = b we will
% set our x to be the answer an array of ones 
actual = ones(n,1);

% there b is given by Ax 
b = a*actual;



% Now we Use the gausian to calculater the computational x value 
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

% forward error is then given by infinity norm ||actual - x ||

error=actual- x;
FE = norm(error,inf)
BE = norm((b - a*x),inf);
error_magnification=(FE/BE)
cond(a)
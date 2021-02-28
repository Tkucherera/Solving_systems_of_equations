
a = [1,4,10,8,13,6,7;
    6,2,-3,16,8,0,6;
    -1,1,4,8,6,0,7;
    1,12,34,2,6,1,-1;
    -4,2,8,-9,-6,18,9;
    9,8,-19,-6,8,19,11
    21,1,1,17,1,1,1];
% put the number of rows in your matrix here 
n = 7;

% creating a for show Lower matrix b4 actual one 
Lower_Matrix = [1,0,0;
                1,1,0;
                1,1,1];

% we need to create a U (upper triangle) matrix 


% step 1: loop such that l target all entries bellow the main diagonal
for j=1 : n-1
    % ensure that our leading main diagonal entry is not 0 
    if abs(a(j,j)) == 0
        error('zero pivot encountered');
    end
    %eliminate the entries below the first entry in column 1
    for i=j+1 : n
       mult = a(i,j)/a(j,j);
       a(i,j) = a(i,j) - mult*a(j,j);
       Lower_Matrix(i,j) = mult;
       for k = j+1: n
           a(i,k) = a(i,k) - mult*a(j,k);
           
       end
    end
end 
a 
Upper_Matrix = a;
Upper_Matrix
Lower_Matrix


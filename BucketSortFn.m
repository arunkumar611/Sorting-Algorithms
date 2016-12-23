function [a] = BucketSortFn (a, n)

%% Assuming the list is equally distributed and normalizing the dataset from -1 to 1

r = range(a)
b = zeros(21,1);
temp = zeros(21,1);
m = 11;

for i = 1:n
    if( (a(1,i) / r) < 0)
        ref = floor( (a(1,i)/r) * 10);
        temp(m+ref,b(m-ref)+1) = a(1,i);
        b(m+ref,1)++;
    elseif( (a(1,i) / r) > 0)
        ref = ceil( (a(1,i)/r) * 10);
        temp(m+ref,b(m+ref)+1) = a(1,i);
        b(m+ref,1)++;
    elseif( (a(1,i) / r) == 0)
        temp(m,b+1) = a(1,i);
        b(m,1)++;
    endif    
end

% Sorting each bucket and concatenating back to list a

a=[];

for i = 1:21
    if(b(i,1)>0)
        t= temp(i,1:(b(i,1)));
        t= IsFn(t);
        a=horzcat(a,t);
    endif
end 

a   
     
end   
 
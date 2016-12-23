function [a] = IsFn (a)

data = a;
listsize = length(data(1, :));


for i = 2:listsize
    temp = data(1,i);
    j = i-1;
    while (j>=1 && temp < data(1,j)) 
       data(1,j+1) = data(1,j);
       j--;
    endwhile
    data(1,j+1)=temp;
 end
 
 a=data;
 
 end
 
 
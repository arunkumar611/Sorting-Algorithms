function [a] = CountingSortFn (a, n)

smallest = min(a)
temp = a .- smallest
temp = temp+1;
r = range(temp)+1

c = zeros(1,r);

for i = 1:n
    c(1,temp(1,i))++;
end

a = [];

for i = 1:r
    if(c(1,i)>0)
        for j=1:c(1,i)
          t1 = i;
          t1--;
          t1 = t1 + smallest;
          a = horzcat(a,t1) ;
         end
     endif
     
end

a
  
end   
 
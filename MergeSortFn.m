function [a] = MergeSortFn (a, left, right)

mid = floor((left+right)/2)

temp1 = a(1,1:mid);
temp2 = a(1,mid+1:right);
sizetemp1 = length(temp1(1, :));
sizetemp2 = length(temp2(1, :));

temp1= IsFn(temp1)
temp2= IsFn(temp2)

i=1;
j=1;
k=left;


while ( i<sizetemp1+1 && j<sizetemp2+1)
    if (temp1(1,i) <= temp2(1,j))
        a(1,k)=temp1(1,i);
        i=i+1;
    else
        a(1,k)=temp2(1,j);
        j=j+1;
    endif
    k=k+1;
endwhile

fprintf('Filling up the rest');

if( i<sizetemp1+1)
    a(1,k:k+(sizetemp1-i)) = temp1(1,i:sizetemp1);
    k= k+(sizetemp1-i)+1;
endif

if(j<sizetemp2+1)
    a(1,k:k+(sizetemp2-j)) = temp2(1,j:sizetemp2);
endif

fprintf('\n Final sorted list is : ');
a

end   
 
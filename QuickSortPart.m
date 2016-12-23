function [a, indx] = QuickSortPart (a, left, right)

pivot = a(1,right);
indx = left;

for i=left:right
    if (a(1,i) <= pivot)
        temp = a(1,i);
        a(1,i) = a(1,indx);
        a(1,indx) = temp;
        indx++;
    endif
end


if(indx <= right)
    if( a(1,indx) >= a(1,right) )
        temp = a(1,indx);
        a(1,indx) = a(1,right);
        a(1,right) = temp;
     endif
endif

indx--;

end
        
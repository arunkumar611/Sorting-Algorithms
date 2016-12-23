function [a] = QuickSortFn (a, left, right)


if (left<right)
    
    [a,pivot] = QuickSortPart (a,left,right);
    a = QuickSortFn (a,left,pivot-1);
    a = QuickSortFn (a,pivot+1,right);
endif

end

data = importdata('input.txt')
nlists = length(data(:, 1))
listsize = length(data(1, :))

for n = 1:nlists
    for i = 1:listsize
        rswapindex = i;
        for j = i+1:listsize
            if(data(n,rswapindex) > data(n,j))
               rswapindex = j;
            endif
        end
        
        if(data(n,i)> data(n,rswapindex));   
            temp = data(n,i);
            data(n,i) = data(n,rswapindex);
            data(n,rswapindex) = temp;
        endif          
    end
end 


save SelectionSort.txt data;
 
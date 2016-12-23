data = importdata('input.txt')
nlists = length(data(:, 1))
listsize = length(data(1, :))

for n = 1:nlists
    for i = 1:listsize
        for j = 1:(listsize-1)
            if(data(n,j) > data(n,j+1))
               temp = data(n,j);
               data(n,j) = data(n,j+1);
               data(n,j+1) = temp;          
            endif
        end
    end
end


save BubbleSort.txt data;
 
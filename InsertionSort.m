data = importdata('input.txt')
nlists = length(data(:, 1))
listsize = length(data(1, :))

for n = 1:nlists
    for i = 2:listsize
        temp = data(n,i);
        j = i-1;
        while (j>=1 && temp < data(n,j)) 
            data(n,j+1) = data(n,j);
            j--;
        endwhile
        data(n,j+1)=temp;
     end
 end
 
 save InsertionSort.txt data;
 
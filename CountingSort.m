data = importdata('input.txt')
nlists = length(data(:, 1));
listsize = length(data(1, :));

fprintf('We have %d lists. ',nlists);
a=input('Select the list to sort : ');

lista = data(a,:);

sortedlist = CountingSortFn(lista, listsize);

 save CountingSort.txt sortedlist;
 
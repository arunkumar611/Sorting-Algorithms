.m files are best viewed in Octave IDE / Wordpad


##############################################################
###### Quick Summary of the sorting algorithms provided ######
##############################################################

Merge Sort, Bucket Sort, Quick Sort are the top performing algorithms

Counting Sort could be the best of all if the range of the list is small and there are repeated values. If the range is huge and the list is sparsely populated, then it would tend to be slow performing

Insertion, Bubble and Selection Sort are the worst performing algorithms


################################
#### File Naming Convention ####
################################

1. (Name)Sort.m - These are the main functions w.r.t each algorithms
	Example : BucketSort.M is the main function for the BucketSort Algo
2. (Name)SortFn.m - These are the functions that peforms the actual algorithm
3. (Name)Sort.txt - These are the Output files generated through Octave save function


############################
#### Few things to note ####
############################

1. input.txt - Is the input. Octave receives the entire lists as a [NxN] matrix and hence fills the blank rows with zeroes in the last. If the input file is a single list, then Octave does not append/fills with zeroes

2. InsertionSort,BubbleSort & SelectionSort algorithms doesn't have seperate functions to sort. In these algorithms all the lists are taken as a Matrix and sorted row-wise and exported 

3. QuickSortPart - Is an exception to the final naming convention above. It has addition function to partition the dataset to pivot and sort

4. IsFn.m - Insertion Sort algorithm/function that is commonly used in Merge and Bucket sort code

		
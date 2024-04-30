#
Sorting and Structure Laboratory

Consider the program "ordenacao.py". The program generates a list with size = 10000, filling it with random integers between 0 and 1000. Additionally, the program contains functions that implement the following sorting algorithms: BubbleSort, InsertionSort, SelectionSort, MergeSort, and QuickSort.

Analyze the code and function calls to develop the activity. See the example in the "main" function that executes the sorted algorithms (built-in sorting implementation in Python) and bubble_sort on a list of random integers. Extend the example for the remaining algorithms. Ensure to use a copy of the original list in sorting (as in the example).

Run each of the algorithms for the following list sizes: 5, 10, 100, 1000, 5000, 10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000, 200000, 300000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000, 5000000, 10000000, 50000000, 100000000. Save the execution times for each algorithm/execution, as a report will be generated. If the algorithm takes more than 10 minutes to execute or throws an exception, save the information of the executions of that algorithm until the last successful execution.

Create a report (in .pdf) containing the following information and discussions:

1. Include the specifications (CPU, memory, etc.) of the machine used for the activity (use the same machine throughout the experiment).

2. Create a table and/or graph (in lines) with the results obtained for the executions.

3. Which executions throw exceptions or exceed 10 minutes?

4. Which algorithms are the fastest, considering the majority of the tests? And the slowest? Is this classification always the same for any input? Discuss.

5. What is the complexity class of the fastest algorithm, considering the majority of the tests? And the complexity class of the slowest algorithm?

6. Search (Web, ChatGPT, and any other source) for an algorithm that is (potentially) faster than those in item (4). Find an implementation (ready-made) that is compatible with the provided code (operates on lists of integers). Run experiments for this algorithm. Is it really faster? Discuss.

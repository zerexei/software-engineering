# Problem: Bubble Sort

## Pattern

Sorting (Comparison-Based Sort), Adjacent Swapping

## Difficulty

Easy

## Core Idea

Bubble Sort repeatedly compares adjacent elements and swaps them if they are in the wrong order. With each full pass through the array, the largest unsorted element "bubbles up" to its correct position at the end. This process repeats until no swaps are needed, meaning the array is sorted.

The key idea is that the array gradually becomes more sorted from right to left as larger elements settle into place.

## Invariant

After the i-th pass:

- The last i elements are in their correct sorted positions
- These elements will never be modified again

## When to Use This Pattern

- When teaching sorting fundamentals
- When simplicity matters more than efficiency
- When dataset is very small
- When interviewer explicitly asks for Bubble Sort
- When demonstrating understanding of basic algorithmic thinking

## Template Code

```python
def bubble_sort(arr):
    n = len(arr)

    for i in range(n):
        swapped = False

        for j in range(n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
                swapped = True

        if not swapped:
            break
```

## Complexity

- Time:
  - Worst: O(n²)
  - Average: O(n²)
  - Best: O(n) (already sorted with early exit)
- Space: O(1)

## Common Pitfalls

- Forgetting early exit optimization (swapped flag)
- Not reducing inner loop range after each pass
- Returning array instead of modifying in-place (depending on problem statement)
- Using incorrect comparison direction (< vs >)
- Assuming Bubble Sort is efficient for large datasets

## Variations to Try

- Bubble Sort without early exit (pure version)
- Optimized Bubble Sort with last-swap index tracking
- Visualize sorting step-by-step
- Convert to descending order
- Count number of swaps (useful for inversion-related problems)

## 🧪 Progress Log

### 05/06/2026

- solved without hints

## Status

- 🔵 Mastered

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered



```
"""
Given an unsorted array of integers,
sort the array in ascending order
using the Bubble Sort algorithm.

Bubble Sort repeatedly compares adjacent
elements and swaps them if they are in
the wrong order. After each pass through the array,
the largest unsorted element moves to its correct position.

You must implement the sorting in-place (modify the original array).

variables:
- unsorted array of integers
- using the bubble sort algorithm
    - repeatedly compares adjacent element
    - and swap if they are in the wrong order
    - largest unsorted element moves to its correct position


constraint:
- sort in acending order
- modify sorting in-place

edge cases:
- array is empty
- single array element
- sorted array
- descending sorted array
- duplicates
"""

def bubble_sort(arr):
    """
    Sorts the given list in ascending order using Bubble Sort.
    
    Parameters:
    arr (list): A list of integers
    
    Returns:
    None (sort the list in-place)
    """
    # Write your code here
    
    # swapped = True
    # while swapped:
    #     swapped = False
        
    #     for i in range(len(arr) - 1):
    #         if arr[i] > arr[i + 1]:
    #             arr[i],arr[i+1] = arr[i+1], arr[i]
    #             swapped = True
    
    # optimized:
    #   - moving largest num to end
    #   - then decrementing search by iteration
    
    for i in range(len(arr)):
        swapped = False
        
        for j in range(len(arr) - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
                swapped = True
                
            
        if not swapped:
            return arr
    
    return arr


# Sample Test Case
arr = [5, 1, 4, 2, 8]

bubble_sort(arr)
print(arr)  # Expected output: [1, 2, 4, 5, 8]

```
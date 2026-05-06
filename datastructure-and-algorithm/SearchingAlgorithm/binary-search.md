# Problem: Binary Search (First / Last Occurrence)

## Pattern

Binary Search (Boundary Search)

## Difficulty

Easy → Medium (with duplicates)

## Core Idea

Instead of stopping when we find the target, we continue the binary search to shrink the search space toward a boundary. For the first occurrence, we bias the search to the left; for the last occurrence, we bias it to the right. This ensures we find the extreme index while maintaining logarithmic time.

## Invariant

The target, if it exists, is always within the current search range [left, right].
Additionally, whenever we find the target, we store it as a candidate and continue searching toward the boundary.

## When to Use This Pattern

- When the array is sorted and you need O(log n) search
- When duplicates exist and you need first/last occurrence
- When solving boundary-type problems (lower bound / upper bound)

## Template Code

```python
def binary_search(arr, x):
    left, right = 0, len(arr) - 1

    while left <= right:
        mid = (left + right) // 2
        if arr[mid] == x:
            return mid

        if arr[mid] < x:
            left = mid + 1
        else:
            right = mid - 1

    return -1

def binary_search_first(arr, x):
    left, right = 0, len(arr) - 1
    ans = -1

    while left <= right:
        mid = (left + right) // 2
        if arr[mid] == x:
            ans = mid
            right = mid - 1
        elif arr[mid] < x:
            left = mid + 1
        else:
            right = mid - 1

    return ans


def binary_search_last(arr, x):
    left, right = 0, len(arr) - 1
    ans = -1

    while left <= right:
        mid = (left + right) // 2
        if arr[mid] == x:
            ans = mid
            left = mid + 1
        elif arr[mid] < x:
            left = mid + 1
        else:
            right = mid - 1

    return ans
```

## Complexity

- Time: O(log n)
- Space: O(1)

## Common Pitfalls

- Stopping immediately when target is found (misses boundary)
- Infinite loops due to incorrect pointer updates
- Using linear expansion after finding target (degrades to O(n))
- Off-by-one errors in left <= right condition

## Variations to Try

- Lower bound (first element ≥ x)
- Upper bound (first element > x)
- Count occurrences using last - first + 1
- Search in rotated sorted array

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




```py
"""
You’re given a sorted array of integers
arr of size n and a target value x.
Write a function that uses binary search
to determine the index of x in the array.

If x exists in the array, return its index.
If it does not exist, return -1.

Assume the array is sorted in ascending order
and contains no duplicate values.
"""

def binary_search(arr, x):
    left = 0
    right = len(arr) - 1
    
    while left <= right:
        middle = (left + right) // 2
        print(left, right, middle)
        
        if arr[middle] == x:
            return middle
            
            # first_occurance: right = mid + 1
            # last_occurance: left = mid - 1
            
        if arr[middle] < x:
            left = middle + 1
        else:
            right = middle - 1
    
    return -1


# Sample Test Case
arr = [1, 3, 5, 7, 9, 11, 13, 15]
x = 15

result = binary_search(arr, x)
print(result)  # Expected output: 3



"""

variables:
- sorted array of integers
- sorted is accending order
- no duplicate values
- arr size of n
- target value x
- use binary search
- get the index of x in the array

constraints:
- if x exists then return index
- if x doesnt exists then return -1

edge cases:
- empty arr
- if dup exists: validate duplicate (analyzed constraint)


how to write the logic
1. divide and conquer
2. left and right indices
3. compare the middle to target
4. then check if middle is less or greater than target
5. if it's less than then we use the right indices else we use the left indices
6. repeat until target is found or no more indices to check
"""
```
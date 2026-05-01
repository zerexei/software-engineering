# Problem: Relative Sort Array

Given two arrays arr1 and arr2, the elements of arr2 are distinct, and all elements in arr2 are also in arr1.

Sort the elements of arr1 such that the relative ordering of items in arr1 are the same as in arr2. Elements that do not appear in arr2 should be placed at the end of arr1 in ascending order.

Example 1:

Input: arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6]
Output: [2,2,2,1,4,3,3,9,6,7,19]
Example 2:

Input: arr1 = [28,6,22,8,44,17], arr2 = [22,28,8,6]
Output: [22,28,8,6,17,44]

Constraints:

1 <= arr1.length, arr2.length <= 1000
0 <= arr1[i], arr2[i] <= 1000
All the elements of arr2 are distinct.
Each arr2[i] is in arr1.

## Pattern

Counting + Custom Sorting (Hash Map / Frequency Map)

## Difficulty

Easy

## Core Idea

We use a frequency map to count occurrences of elements in arr1, then rebuild the array in two phases:

1. Place elements in the order defined by arr2
2. Append remaining elements (not in arr2) in ascending order

This avoids sorting the whole array with a custom comparator and keeps it efficient.

## Invariant

- Elements in arr2 must appear first, in the exact order given
- Remaining elements must be sorted in ascending order
- Frequencies of elements must be preserved

## When to Use This Pattern

- When order is partially predefined
- When frequency matters more than positions
- When constraints are small enough for counting (like values ≤ 1000)
- Problems involving relative ordering

## Template Code

```python
from collections import Counter

def relativeSortArray(arr1, arr2):
    count = Counter(arr1)
    result = []

    # Place elements in arr2 order
    for num in arr2:
        result.extend([num] * count[num])
        del count[num]

    # Sort remaining elements
    for num in sorted(count.keys()):
        result.extend([num] * count[num])

    return result
```

## Complexity

- Time: O(n + k log k)
  - n = len(arr1), k = number of distinct leftover elements
- Space: O(n)

## Common Pitfalls

- Forgetting to remove elements already used (del count[num])
- Not preserving duplicates
- Sorting entire array instead of just leftovers (less efficient)
- Misunderstanding that arr2 guarantees presence in arr1

## Variations to Try

- Solve using custom comparator (sort(key=...))
- Use counting array instead of Counter (since values ≤ 1000)
- In-place modification version
- Stable sort variant

## 🧪 Progress Log

### 05/01/2026

- Overthink of arr2 edge case

## Status

- 🟢 Comfortable

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

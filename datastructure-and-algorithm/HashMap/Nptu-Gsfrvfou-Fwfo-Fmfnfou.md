# Problem: Most Frequent Even Element

## Pattern

Hash Map (Frequency Counting) + Selection Scan

## Difficulty

Easy

## Core Idea

Count the frequency of each even number using a hash map, then scan the map to find the number with the highest frequency. If there is a tie, choose the smaller number. Ignore all odd numbers completely since they are irrelevant.

## Invariant

At any point while scanning the frequency map:

- best_num always holds the smallest number among those with the highest frequency seen so far among even numbers only

## When to Use This Pattern

- When you need frequency counts of elements
- When filtering is required before aggregation (e.g., only even, only vowels, etc.)
- When selecting max/min based on frequency with tie-breaking rules
- When input size is small-to-medium and O(n) hashing is acceptable

## Template Code

```python
from collections import Counter

class Solution:
    def mostFrequentEven(self, nums: List[int]) -> int:
        counts = Counter(nums)
        best_freq = 0
        res = -1

        for num, freq in counts.items():
            if (num % 2) == 0:
                if best_freq < freq  or (best_freq == freq and num < res) :
                    best_freq = freq
                    res = num

        return res
```

## Complexity

- Time: O(n), where n is the length of nums
- Space: O(k), where k is number of distinct even elements

## Common Pitfalls

- Forgetting to ignore odd numbers during counting
- Not handling the case where no even numbers exist
- Incorrect tie-breaking logic (must choose smaller number)
- Initializing best_num incorrectly (should start as -1)

## Variations to Try

- Return most frequent odd number instead
- Return top-k frequent even numbers
- Return most frequent element overall (no filtering)
- Return most frequent element with lexicographical tie-breaking for strings

## 🧪 Progress Log

### 05/04/2026

- Solved with hints

## Status

- 🔵 Mastered

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

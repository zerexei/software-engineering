```py
"""
problem:
- return all unique triplets whose sum equals zero

invariant:
- indices are always unique (i < left < right)
- result must not contain duplicate triplets

input:
- nums: list[int]

output:
- list[list[int]]

constraints & assumptions:
- 3 <= len(nums) <= 3000
- -10^5 <= nums[i] <= 10^5

approach:
- sort the array
- fix one number at index i
- use two pointers (left and right) to find two numbers that complete
  the triplet sum to zero
- move pointers based on the current sum
- skip duplicate values to avoid duplicate triplets

edge cases:
- duplicate values
- all zeros
- no valid triplet
- exactly 3 elements

time complexity: O(n²)

space complexity: O(1)
"""

class Solution:
    def threeSum(self, nums: list[int]) -> list[list[int]]:
        nums.sort()
        n = len(nums)
        target = 0
        res = []

        for i in range(n - 2):

            if i > 0 and nums[i] == nums[i - 1]: # skip initial indices duplicate
                continue

            left = i + 1
            right = n - 1

            while left < right:
                current_sum = nums[i] + nums[left] + nums[right]

                if current_sum == target:
                    res.append([nums[i], nums[left], nums[right]])

                    while left < right and nums[left] == nums[left + 1]: # skip left indices duplicate
                        left += 1

                    while left < right and nums[right] == nums[right - 1]: # skip right indices duplicate
                        right -= 1

                    left += 1
                    right -= 1

                elif current_sum < target:
                    left += 1

                else:
                    right -= 1

        return res
```

# Problem: 15. 3Sum

## Pattern

Two Pointers + Sorting

## Difficulty

Medium

## Core Idea

Sort the array first. Fix one number at a time, then use two pointers
(left and right) to find the remaining two numbers whose sum equals
the negative of the fixed number.

Because the array is sorted, if the current sum is too small we move
the left pointer rightward, and if the sum is too large we move the
right pointer leftward.

Skip duplicate values to avoid generating duplicate triplets.

## Invariant

- The array remains sorted throughout the search.
- `i < left < right`, so indices are always unique.
- Every triplet added to the result sums to zero.
- Duplicate triplets are skipped.

## When to Use This Pattern

- Need unique pairs/triplets that satisfy a target sum.
- Input can be sorted or sorting is acceptable.
- Brute force O(n³) is too expensive.

## Complexity

- Time: O(n²)
- Space: O(1) excluding output

## Common Pitfalls

- Forgetting to skip duplicate values for `i`.
- Forgetting to skip duplicate values after finding a valid triplet.
- Using separate `if` statements instead of `if / elif / else`.
- Confusing duplicate indices with duplicate triplets.

## Variations to Try

- 3Sum Closest
- 4Sum
- Two Sum II (Sorted Array)
- Count triplets with sum smaller than target

## 🧪 Progress Log

### 06/02/2026

- correct approach and intuition but forgot to implement optimized solution

## Status

- 🟢 Comfortable

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

# Problem: Max Consecutive Ones (LeetCode 485)

## Pattern

Counting Consecutive Elements / Array Traversal

## Difficulty

Easy

## Core Idea

Traverse the array once while maintaining the length of the current streak of `1`s.

- If the current number is `1`, extend the streak.
- If the current number is `0`, the streak ends:
  - Update the maximum streak seen so far.
  - Reset the current streak.
- At the end, compare the final streak with the maximum because the array may end with `1`s.

## Invariant

At every iteration:

- `counter` = length of the current consecutive run of `1`s.
- `current_max` = longest run of `1`s seen so far.

## When to Use This Pattern

- Finding the longest consecutive sequence satisfying a condition.
- Tracking streaks in an array or string.
- Single-pass problems where only local state is needed.

## Template Code

class Solution:
def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
current_max = 0
counter = 0

```
    for n in nums:
        if n == 1:
            counter += 1
        else:
            current_max = max(current_max, counter)
            counter = 0

    return max(current_max, counter)
```

## Complexity

- Time: O(n)
- Space: O(1)

## Common Pitfalls

- Forgetting to compare the final streak after the loop.
- Resetting the counter before updating the maximum.
- Overcomplicating the solution with nested loops.

## Variations to Try

- Longest consecutive `0`s.
- Count the number of streaks of `1`s.
- Longest subarray containing at most one `0`.
- Longest subarray containing at most `k` zeros.

## 🧪 Progress Log

### 06/08/2026

- solved w/out hints

## Status

🔵 Mastered

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

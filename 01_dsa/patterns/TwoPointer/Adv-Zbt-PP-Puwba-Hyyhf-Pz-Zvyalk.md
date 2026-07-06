# Problem: 167. Two Sum II - Input Array Is Sorted

## Pattern

Two Pointers

## Difficulty

🟡 Medium

## Core Idea

Because the array is already sorted, we can place one pointer at the beginning and one at the end.

- If the sum is too small, move the left pointer right to increase the sum.
- If the sum is too large, move the right pointer left to decrease the sum.
- If the sum equals the target, we found the answer.

The sorted property allows us to eliminate possibilities efficiently without checking every pair.

## Invariant

At every step:

- All pairs outside the current `[left, right]` window have already been ruled out.
- If `numbers[left] + numbers[right] < target`, no pair using `left` can be the answer.
- If `numbers[left] + numbers[right] > target`, no pair using `right` can be the answer.

## When to Use This Pattern

- Array is sorted.
- Need to find a pair satisfying a condition.
- Looking for an O(n) solution with O(1) extra space.

## Template Code

```python
# Two Pointers Template

left = 0
right = len(arr) - 1

while left < right:
    current = arr[left] + arr[right]

    if current == target:
        # found answer
        pass
    elif current < target:
        left += 1
    else:
        right -= 1
```

## Complexity

- Time: O(n)
- Space: O(1)

## Common Pitfalls

- Forgetting the answer requires 1-based indexing.
- Using a hash map instead of exploiting the sorted array.
- Moving both pointers at the same time.
- Using `while left <= right` instead of `while left < right`.

## Variations to Try

- Two Sum (unsorted array)
- Find all pairs with a target sum
- 3Sum
- Container With Most Water
- Valid Palindrome

## 🧪 Progress Log

### 06/01/2026

- solved without hint, identified invariant and the correct pattern


## Status

🔵 Mastered

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

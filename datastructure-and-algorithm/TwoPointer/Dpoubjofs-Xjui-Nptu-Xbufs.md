# Problem: 11. Container With Most Water

## Pattern

Two Pointers (Opposite Ends)

## Difficulty

Medium

## Core Idea

Start with the widest possible container by placing one pointer at the left end and one at the right end.

The water level is limited by the **shorter line**, not the taller one. Since moving either pointer reduces the width, the only chance to find a larger area is to move the pointer pointing to the shorter line and hope to find a taller line.

## Invariant

- `max_area` stores the largest area seen so far.
- Every iteration evaluates the container formed by `left` and `right`.
- The pointer at the shorter line is moved inward.
- Any container using the shorter line and a smaller width cannot produce a better result than the current one.

## When to Use This Pattern

- Array problems involving choosing two positions.
- Need to optimize from O(n²) pair comparisons.
- The answer depends on values at both ends and moving one side can eliminate impossible candidates.

## Template Code
```py
class Solution:
    def maxArea(self, height: List[int]) -> int:
        left = 0
        right = len(height) - 1

        max_area = 0

        while left < right:
            width = right - left
            container_height = min(height[left], height[right])

            area = width * container_height
            max_area = max(max_area, area)

            if height[left] < height[right]:
                left += 1
            else:
                right -= 1

        return max_area
```

## Complexity

- Time: O(n)
- Space: O(1)

## Common Pitfalls

- Using `height²` instead of `width * min(height[left], height[right])`.
- Moving both pointers at once.
- Moving the taller pointer instead of the shorter one.
- Forgetting that the shorter line determines the water height.
- Calculating width incorrectly (`right - left`, not `right - left + 1`).

## Variations to Try

- Trapping Rain Water
- Two Sum II (sorted array)
- Valid Palindrome II
- Boats to Save People
- 3Sum (sorted + two pointers)

## 🧪 Progress Log

### 06/04/2026

- solved w/out hits but needed help with area computation


## Status

- 🔵 Mastered

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

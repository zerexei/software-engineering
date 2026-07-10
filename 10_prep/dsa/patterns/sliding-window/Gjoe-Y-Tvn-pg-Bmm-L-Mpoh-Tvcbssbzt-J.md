# Problem: 3318. Find X-Sum of All K-Long Subarrays I

## Pattern

Sliding Window + Frequency Counting + Custom Sorting

## Difficulty

Easy

## Core Idea

For each subarray of length `k`, count the frequency of every element. Rank elements by frequency in descending order, breaking ties by larger value. Keep only the top `x` distinct elements and compute the sum of all their occurrences.

Because the constraints are small, rebuilding the frequency map for every window is efficient enough.

## Invariant

- Frequencies always represent the current window.
- Elements are ranked by:
  - Higher frequency first
  - Larger value first when frequencies are equal.
- Only the top `x` ranked distinct elements contribute to the x-sum.

## When to Use This Pattern

- Need frequency analysis on fixed-size subarrays.
- Need top-k/top-x elements using a custom ranking rule.
- Constraints are small enough to recompute frequencies repeatedly.

## Complexity

- Time: O((n − k + 1) × (k + d log d))
- Space: O(d)

Where `d` is the number of distinct elements in the current window.

## Common Pitfalls

- Forgetting that larger values win frequency ties.
- Summing distinct values instead of all their occurrences.
- Sorting in ascending order instead of descending order.
- Selecting the top `x` occurrences rather than the top `x` distinct elements.

## Variations to Try

- Maintain frequencies using a true sliding window.
- Return the selected top `x` elements instead of their sum.
- Find the top-k frequent elements in the entire array.
- Support variable-sized windows.
- Use heaps for dynamic ranking maintenance.

## 🧪 Progress Log

### 05/30/2026

- Solved with correct intuition but forgot about `sorted(key=lambda x: (-x[1], -x[0]))`; also thought about heapq; 
- approach are correct but needed improvements on implementation

### 2026-06-05
- solved w/out hints but got confused with sorted(key=)

## Status

- 🟢 Comfortable

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

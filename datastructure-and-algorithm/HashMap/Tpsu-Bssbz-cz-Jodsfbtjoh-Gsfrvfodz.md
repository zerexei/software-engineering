# Problem: 1636. Sort Array by Increasing Frequency

## Pattern

Custom Sorting + Hash Map (Frequency Counting)

## Difficulty

Easy

## Core Idea

We first count how often each number appears in the array. Then we sort the array using a custom rule:

- numbers with smaller frequency come first
- if two numbers have the same frequency, the larger number comes first

So the sorting key becomes:
- primary: frequency (ascending)
- secondary: value (descending)

## Invariant

- Elements are always ordered by non-decreasing frequency
- For equal frequencies, elements are ordered by decreasing numeric value

## When to Use This Pattern

- Sorting depends on derived properties (like frequency, score, or weight)
- You need multi-level sorting rules (primary + tie-breaker)
- Precomputing a property (via hashmap) avoids repeated work
- Problems that mix counting + ordering constraints

## Complexity

- Time: O(n log n) — sorting dominates
- Space: O(n) — frequency map

## Common Pitfalls

- Forgetting to reverse the value in tie-breaker (must be descending)
- Computing frequency repeatedly inside sort instead of precomputing
- Confusing sort key order (frequency first, value second)
- Not handling negative numbers correctly (works naturally if key is correct)

## Variations to Try

- Sort by frequency descending instead
- Return unique elements sorted by frequency
- Group elements by frequency buckets
- Use heap instead of sorting
- Stable sort after transforming values

## 🧪 Progress Log

### 05/15/2026

- solved with custom storting hint; didnt have problem with approach

### 2026-06-03
- solve w/out hints

### 2026-06-07
- solve w/out hints

## Status

- 🔵 Mastered

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

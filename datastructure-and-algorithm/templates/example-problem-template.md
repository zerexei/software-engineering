# Problem: Longest Substring Without Repeating Characters

## Pattern

Sliding Window (Dynamic)

## Difficulty

<!-- Easy / Medium / Hard -->

## Core Idea

Expand right pointer, shrink left when duplicate appears using hashmap.

## Invariant

Window always contains unique characters.

## When to Use This Pattern

- Substring problems
- "no duplicates"
- Need O(n) optimization

## Template Code

```python
def lengthOfLongestSubstring(s):
    seen = {}
    left = 0
    max_len = 0

    for right in range(len(s)):
        if s[right] in seen and seen[s[right]] >= left:
            left = seen[s[right]] + 1

        seen[s[right]] = right
        max_len = max(max_len, right - left + 1)

    return max_len
```

## Complexity

- Time: O(n)
- Space: O(n)

## Common Pitfalls

- Not updating left correctly
- Off-by-one errors

## Variations to Try

- Longest substring with at most K distinct characters
- Minimum window substring

## 🧪 Progress Log

### 01/25/2020

- Needed hints
- Didn’t understand shrinking

### 01/26/2020

- Solved but messy
- Missed edge cases

### 01/28/2020

- Clean solution
- Understand invariant

## Status

✅ Understood

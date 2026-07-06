# Problem: 49. Group Anagrams

## Pattern

Hash Map + Canonical Representation (Sorting)

## Difficulty

Medium

## Core Idea

Two strings are anagrams if they contain the same characters with the same frequencies. By sorting each string, all anagrams produce the same canonical form (key).

Use a hash map where:
- **Key:** sorted version of the string
- **Value:** list of strings sharing that key

After processing every string, return all grouped values.

## Invariant

- Every anagram maps to the same sorted key.
- Every non-anagram maps to a different key.
- `groups[key]` always contains all strings seen so far with that key.

## When to Use This Pattern

- Need to group items by a shared property.
- Need fast lookup using a canonical representation.
- Strings can be normalized (sorted, counted, etc.) into the same key.

## Template Code

```python
from collections import defaultdict

class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        groups = defaultdict(list)

        for s in strs:
            key = "".join(sorted(s))
            groups[key].append(s)

        return list(groups.values())
```

## Complexity

- Time: **O(n · k log k)**
  - `n` = number of strings
  - `k` = maximum string length
- Space: **O(n · k)**

## Common Pitfalls

- Forgetting to convert `sorted(s)` into a string (`"".join(...)`).
- Using a list as a dictionary key (lists are unhashable).
- Confusing grouping with checking whether two strings are anagrams.

## Variations to Try

- Use a 26-character frequency tuple as the key for **O(n · k)** time.
- Valid Anagram
- Find All Anagrams in a String

## 🧪 Progress Log

### 07/06/2026

- solved w/ hint (I over engineered it)

## Status

🟢 Comfortable

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

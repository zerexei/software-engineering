# Problem: 438. Find All Anagrams in a String

## Pattern
Sliding Window + Frequency Counting

## Difficulty
Medium

## Core Idea
We slide a fixed-size window (length = len(p)) over the string `s` and compare character frequencies of the window with `p`.

Instead of recomputing counts every time, we update frequencies incrementally as the window moves (add right char, remove left char).

If both frequency maps match, the current window is an anagram of `p`.

## Invariant
At every step:
- The window size is always equal to `len(p)`
- The frequency structure represents exactly the current window
- A match means the window contains the same multiset of characters as `p`

## When to Use This Pattern
- Fixed-size substring problems
- Anagram / permutation detection in strings
- Frequency matching in a sliding window
- Problems asking for "all substrings of length k satisfying condition"

## Template Code

```python
class Solution:
    def findAnagrams(self, s: str, p: str) -> List[int]:
        s_len = len(s)
        p_len = len(p)
        res = []

        if p_len > s_len:
            return res

        p_count = [0] * 26
        window = [0] * 26

        for c in p:
            p_count[ord(c) - ord('a')] += 1


        for i in range(s_len):
            # increment current char count
            window[ord(s[i]) - ord('a')] += 1

            # decrease previous char count
            if i >= p_len:
                window[ord(s[i - p_len]) - ord('a')] -= 1

            # validate window count
            if window == p_count:
                res.append(i - p_len + 1)

        return res
````

## Complexity

* Time: O(n)
* Space: O(1) (fixed 26-size arrays)

## Common Pitfalls

* Using `==` comparison of full arrays repeatedly (can be slower)
* Forgetting to maintain window size exactly `len(p)`
* Off-by-one errors when updating left/right pointers
* Not handling initial window correctly

## Variations to Try

* Using hashmap instead of fixed array
* Generalizing to Unicode characters
* Return substrings instead of indices
* Count number of anagram occurrences (not indices)

## 🧪 Progress Log

### 15/06/2026

- needed help with `ord()`, window and pattern comparison feels weird but understandable

## Status

🟡 Learning

## Legend

* 🔴 Beginner
* 🟡 Learning
* 🟢 Comfortable
* 🔵 Mastered

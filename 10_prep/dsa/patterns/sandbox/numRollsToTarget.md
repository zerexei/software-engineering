# Problem: Number of Dice Rolls With Target Sum

You have n dice, and each dice has k faces numbered from 1 to k.

Given three integers n, k, and target, return the number of possible ways (out of the kn total ways) to roll the dice, so the sum of the face-up numbers equals target. Since the answer may be too large, return it modulo 109 + 7.

Example 1:

Input: n = 1, k = 6, target = 3
Output: 1
Explanation: You throw one die with 6 faces.
There is only one way to get a sum of 3.
Example 2:

Input: n = 2, k = 6, target = 7
Output: 6
Explanation: You throw two dice, each with 6 faces.
There are 6 ways to get a sum of 7: 1+6, 2+5, 3+4, 4+3, 5+2, 6+1.
Example 3:

Input: n = 30, k = 30, target = 500
Output: 222616187
Explanation: The answer must be returned modulo 109 + 7.

Constraints:

1 <= n, k <= 30
1 <= target <= 1000

## Pattern

Dynamic Programming (Knapsack-style / Counting ways)

## Difficulty

Medium

## Core Idea

We build the solution incrementally by counting how many ways we can reach each possible sum using a certain number of dice.

- Let dp[s] represent the number of ways to get sum s.
- Start with dp[0] = 1 (one way to get sum 0: use no dice).
- For each die, we update the possible sums by trying all face values (1 to k).
- We repeat this process n times.

This is essentially a multi-step accumulation of combinations, similar to coin change.

## Invariant

After processing i dice:

- dp[s] always represents the number of ways to get sum s using exactly i dice.

## When to Use This Pattern

- Counting number of ways to reach a target
- Problems involving sum combinations
- When choices are repeated in stages (like dice, coins, steps)
- When order matters and constraints are bounded

## Template Code

```python
def numRollsToTarget(n, k, target):
    MOD = 10**9 + 7

    dp = [0] * (target + 1)
    dp[0] = 1

    for _ in range(n):
        new_dp = [0] * (target + 1)
        for s in range(target + 1):
            if dp[s] > 0:
                for face in range(1, k + 1):
                    if s + face <= target:
                        new_dp[s + face] = (new_dp[s + face] + dp[s]) % MOD
        dp = new_dp

    return dp[target]
```

## Complexity

- Time: O(n × k × target)
- Space: O(target)

## Common Pitfalls

- Forgetting modulo → results overflow
- Updating dp in-place instead of using new_dp
- Not initializing dp[0] = 1
- Iterating beyond target
- Off-by-one errors in face values (must be 1 to k)

## Variations to Try

- Optimize inner loop using prefix sums (reduces k factor)
- Convert to 2D DP (dp[dice][sum])
- Find probability instead of count
- Dice with different face values (non-uniform)

## 🧪 Progress Log

### 05/01/2026

- Tried solving

## Status

- 🔴 Beginner

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

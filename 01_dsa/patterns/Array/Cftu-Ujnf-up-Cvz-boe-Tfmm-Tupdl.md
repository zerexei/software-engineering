# Problem: 121. Best Time to Buy and Sell Stock

## Pattern

One Pass / Running Minimum (Greedy)

## Difficulty

Easy

## Core Idea

Scan the array once while keeping track of the **lowest price seen so far** (best buying opportunity). For each current price, calculate the profit if you sold today. Update the maximum profit whenever a better one is found.

The key insight is that the best buying day before the current day is always the minimum price encountered so far.

## Invariant

- `buy` is always the minimum price seen from the beginning up to the current day.
- `profit` is always the maximum profit found so far.
- Buying always happens before selling because `buy` only comes from previous elements.

## When to Use This Pattern

- Need the best answer while scanning an array once.
- Need to maintain a running minimum or maximum.
- Future decisions depend only on the best value seen so far.

## Template Code

```python
class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        if not prices:
            return 0

        buy = prices[0]
        profit = 0

        for sell in prices:
            if sell < buy:
                buy = sell

            profit = max(profit, sell - buy)

        return profit
```

## Complexity

- Time: **O(n)**
- Space: **O(1)**

## Common Pitfalls

- Updating profit before updating the minimum buying price.
- Trying every buy/sell pair (O(n²)).
- Forgetting to return `0` when prices always decrease.

## Variations to Try

- Best Time to Buy and Sell Stock II (unlimited transactions)
- Best Time to Buy and Sell Stock with Cooldown
- Best Time to Buy and Sell Stock with Transaction Fee

## 🧪 Progress Log

### 07/06/2026

- solved w/ hints


## Status

🔵 Mastered

## Legend

- 🔴 Beginner
- 🟡 Learning
- 🟢 Comfortable
- 🔵 Mastered

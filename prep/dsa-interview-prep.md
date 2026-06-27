# DSA Interview Prep

## Topic: Arrays + Strings + Hash Maps

### Core Concepts

- Array traversal and indexing
- String manipulation
- Hash maps and hash sets
- Frequency counting
- Prefix sums
- Coordinate compression (optional)

### Key Patterns

- Frequency map
- Prefix Sum + Hash Map
- Counting
- Simulation
- Brute force → Hash optimization

### Important Notes

- Foundation for almost every interview.
- Optimize from O(n²) to O(n) whenever possible.
- Always analyze time and space complexity.

### Problems

- [ ] Two Sum (Easy)
- [ ] Valid Anagram (Easy)
- [ ] Best Time to Buy and Sell Stock (Easy)
- [ ] Group Anagrams (Medium)
- [ ] Product of Array Except Self (Medium)
- [ ] Subarray Sum Equals K (Medium)
- [ ] Longest Consecutive Sequence (Medium)

## Topic: Two Pointers

### Core Concepts

- Left-right traversal
- Fast and slow pointers
- In-place array manipulation
- Sorted array optimization

### Key Patterns

- Opposite direction pointers
- Same direction pointers
- Partitioning
- Meeting pointers

### Important Notes

- Eliminates many O(n²) brute-force solutions.
- Frequently combined with sorting.

### Problems

- [ ] Valid Palindrome (Easy)
- [ ] Move Zeroes (Easy)
- [ ] Remove Duplicates from Sorted Array (Easy)
- [ ] Container With Most Water (Medium)
- [ ] 3Sum (Medium)
- [ ] Trapping Rain Water (Hard)

## Topic: Sliding Window

### Core Concepts

- Expanding and shrinking windows
- Maintaining dynamic constraints
- Frequency tracking

### Key Patterns

- Fixed-size window
- Variable-size window
- Character frequency map
- Longest / Shortest window

### Important Notes

- Usually paired with hash maps.

### Problems

- [ ] Maximum Average Subarray I (Easy)
- [ ] Longest Substring Without Repeating Characters (Medium)
- [ ] Permutation in String (Medium)
- [ ] Longest Repeating Character Replacement (Medium)
- [ ] Minimum Size Subarray Sum (Medium)
- [ ] Minimum Window Substring (Hard)
- [ ] Sliding Window Maximum (Hard)

## Topic: Linked Lists

### Core Concepts

- Pointer manipulation
- Node traversal
- Memory references

### Key Patterns

- Fast & Slow pointers
- Reversal
- Dummy node
- Cycle detection

### Important Notes

- Draw pointer diagrams before coding.
- Carefully handle null pointers.

### Problems

- [ ] Reverse Linked List (Easy)
- [ ] Merge Two Sorted Lists (Easy)
- [ ] Linked List Cycle (Easy)
- [ ] Remove Nth Node From End of List (Medium)
- [ ] Reorder List (Medium)
- [ ] Reverse Nodes in k-Group (Hard)

## Topic: Stack & Queue

### Core Concepts

- LIFO (Stack)
- FIFO (Queue)
- Deque
- Expression evaluation

### Key Patterns

- Monotonic Stack
- Stack simulation
- Queue simulation
- Level-order processing

### Important Notes

- Stack is heavily used for optimization problems.
- Queue is the foundation of BFS.
- Python's `collections.deque` supports both efficiently.

### Problems

- [ ] Valid Parentheses (Easy)
- [ ] Min Stack (Easy)
- [ ] Evaluate Reverse Polish Notation (Medium)
- [ ] Daily Temperatures (Medium)
- [ ] Decode String (Medium)
- [ ] Largest Rectangle in Histogram (Hard)

## Topic: Trees (DFS & BFS)

### Core Concepts

- Binary trees
- Binary Search Trees (BST)
- Trie (Prefix Tree)
- Recursive DFS
- Iterative DFS
- Breadth-First Search (BFS)
- Recursive tree traversal

### Key Patterns

- Preorder / Inorder / Postorder
- DFS
- BFS (Level Order)
- Divide & Conquer
- Lowest Common Ancestor
- Prefix matching (Trie)

### Important Notes

- Trees are recursion-heavy.
- Learn both recursive and iterative traversals.
- DFS and BFS are both fundamental traversal techniques.
- Trie is a specialized tree used for efficient prefix searches.
- Grid problems are graphs in disguise.

### Problems

#### Binary Trees

- [ ] Maximum Depth of Binary Tree (Easy)
- [ ] Invert Binary Tree (Easy)
- [ ] Same Tree (Easy)
- [ ] Construct Binary Tree from Preorder and Inorder Traversal (Medium)
- [ ] Lowest Common Ancestor of a Binary Tree (Medium)
- [ ] Validate Binary Search Tree (Medium)
- [ ] Serialize and Deserialize Binary Tree (Hard)

#### Trie

- [ ] Implement Trie (Medium)
- [ ] Search Suggestions System (Medium)
- [ ] Design Add and Search Words Data Structure (Medium)
- [ ] Replace Words (Medium)
- [ ] Word Search II (Hard)

## Topic: Graphs (DFS, BFS & Topological Sort)

### Core Concepts

- Graph representation
- Adjacency list
- Directed vs. Undirected graphs
- Visited state tracking

### Key Patterns

- DFS
- BFS
- Multi-source BFS
- Connected Components
- Cycle Detection
- Topological Sort
- Shortest Path (Unweighted)

### Important Notes

- Know when to choose DFS vs. BFS.
- Multi-source BFS is useful when traversal starts from multiple nodes simultaneously.

### Problems

#### Traversal

- [ ] Find if Path Exists in Graph (Easy)
- [ ] Number of Islands (Medium)
- [ ] Clone Graph (Medium)

#### Multi-source BFS

- [ ] Rotting Oranges (Medium)
- [ ] 01 Matrix (Medium)

#### Topological Sort

- [ ] Course Schedule (Medium)
- [ ] Alien Dictionary (Hard)

#### Advanced DFS / BFS

- [ ] Pacific Atlantic Water Flow (Medium)
- [ ] Word Ladder (Hard)

## Topic: Binary Search

### Core Concepts

- Divide-and-conquer search
- Monotonic search space
- Binary search on answer

### Key Patterns

- Standard binary search
- Search on answer
- Binary search over sorted structures

### Important Notes

- Binary search isn't limited to arrays.
- Always identify the monotonic condition.

### Problems

- [ ] Binary Search (Easy)
- [ ] Search Insert Position (Easy)
- [ ] Search in Rotated Sorted Array (Medium)
- [ ] Find Minimum in Rotated Sorted Array (Medium)
- [ ] Koko Eating Bananas (Medium)
- [ ] Capacity To Ship Packages Within D Days (Medium)
- [ ] Median of Two Sorted Arrays (Hard)

## Topic: Heap (Priority Queue)

### Core Concepts

- Min heap
- Max heap
- Priority ordering

### Key Patterns

- Top-K
- Merge K
- Running Median
- Scheduling
- Frequency Counting

### Important Notes

- Python's `heapq` is a min heap.
- Prefer heaps over sorting when only partial ordering is needed.

### Problems

- [ ] Kth Largest Element in an Array (Easy)
- [ ] Last Stone Weight (Easy)
- [ ] Top K Frequent Elements (Medium)
- [ ] Merge k Sorted Lists (Medium)
- [ ] Task Scheduler (Medium)
- [ ] Find Median from Data Stream (Hard)

## Topic: Backtracking (DFS)

### Core Concepts

- Recursive DFS
- Decision tree exploration
- Backtracking
- State restoration

### Key Patterns

- Choose → Explore → Undo
- Subsets
- Permutations
- Combinations
- Pruning

### Important Notes

- Backtracking is DFS on a decision tree.
- Practice recursion templates.

### Problems

- [ ] Letter Combinations of a Phone Number (Medium)
- [ ] Subsets (Medium)
- [ ] Permutations (Medium)
- [ ] Palindrome Partitioning (Medium)
- [ ] Combination Sum (Medium)
- [ ] Word Search (Medium)
- [ ] N-Queens (Hard)

## Topic: Dynamic Programming

### Core Concepts

- State definition
- Memoization
- Tabulation
- Transition equations

### Key Patterns

- Linear DP
- Grid DP
- Sequence DP
- Knapsack DP
- State Machine DP (optional)

### Important Notes

- Define the DP state before coding.
- Solve recursively before optimizing.

### Problems

- [ ] Climbing Stairs (Easy)
- [ ] House Robber (Easy)
- [ ] Coin Change (Medium)
- [ ] Unique Paths (Medium)
- [ ] Longest Common Subsequence (Medium)
- [ ] Longest Increasing Subsequence (Medium)
- [ ] Edit Distance (Hard)

## Topic: Greedy

### Core Concepts

- Local optimal decisions
- Sorting
- Interval scheduling

### Key Patterns

- Interval merging
- Jump optimization
- Resource allocation

### Important Notes

- Greedy solutions require correctness arguments.
- Consider DP if greedy cannot be justified.

### Problems

- [ ] Assign Cookies (Easy)
- [ ] Jump Game (Medium)
- [ ] Merge Intervals (Medium)
- [ ] Non-overlapping Intervals (Medium)
- [ ] Gas Station (Medium)
- [ ] Partition Labels (Medium)
- [ ] Minimum Number of Refueling Stops (Hard)

## Topic: Union-Find (Disjoint Set Union)

### Core Concepts

- Disjoint sets
- Path compression
- Union by rank

### Key Patterns

- Connected components
- Cycle detection
- Dynamic connectivity

### Important Notes

- Excellent for connectivity problems.
- Nearly O(1) amortized operations.

### Problems

- [ ] Number of Provinces (Medium)
- [ ] Redundant Connection (Medium)
- [ ] Graph Valid Tree (Medium)
- [ ] Number of Connected Components in an Undirected Graph (Medium)
- [ ] Accounts Merge (Medium)
- [ ] Swim in Rising Water (Hard)

## Topic: Bit Manipulation

### Core Concepts

- Bitwise operations
- XOR properties
- Bit masking

### Key Patterns

- Unique element detection
- State compression
- Bit counting

### Important Notes

- Frequently appears in optimization questions.
- Memorize common XOR identities.

### Problems

- [ ] Single Number (Easy)
- [ ] Number of 1 Bits (Easy)
- [ ] Counting Bits (Easy)
- [ ] Sum of Two Integers (Medium)
- [ ] Bitwise AND of Numbers Range (Medium)
- [ ] Subsets (Medium)
- [ ] Maximum XOR of Two Numbers in an Array (Hard)

# Common Interview Templates

## Sliding Window

```py
left = 0

for right in range(len(nums)):
    # expand
    while invalid_window:
        # shrink
        left += 1
    # update answer
```

## DFS

```py
def dfs(node):
    if not node:
        return
    # process node
    dfs(node.left)
    dfs(node.right)
```

## BFS

```py
queue = deque([root])
while queue:
    for _ in range(len(queue)):
        node = queue.popleft()
        if node.left:
            queue.append(node.left)
        if node.right:
            queue.append(node.right)
```

## Binary Search

```py
left, right = 0, len(nums) - 1

while left <= right:
    mid = (left + right) // 2
    if nums[mid] == target:
        return mid
    elif nums[mid] < target:
        left = mid + 1
    else:
        right = mid - 1
```

## Backtracking

```py
def backtrack(path):
    if done:
        result.append(path[:])
        return
    for choice in choices:
        path.append(choice)
        backtrack(path)
        path.pop()
```

## Prefix Sum + Hash Map

```py
prefix = {0: 1}
curr = 0
for num in nums:
    curr += num
    if curr - k in prefix:
        answer += prefix[curr - k]
    prefix[curr] = prefix.get(curr, 0) + 1
```

## Heap (Priority Queue)

```py
import heapq
heap = []
for num in nums:
    heapq.heappush(heap, num)
smallest = heapq.heappop(heap)
```

## Monotonic Stack

```py
stack = []
for i, x in enumerate(nums):
    while stack and nums[stack[-1]] < x:
        stack.pop()
    stack.append(i)
```

## Merge Intervals

```py
intervals.sort()
merged = []
for start, end in intervals:
    if not merged or merged[-1][1] < start:
        merged.append([start, end])
    else:
        merged[-1][1] = max(merged[-1][1], end)
```

## Union Find

```py
def find(x):
    if parent[x] != x:
        parent[x] = find(parent[x])
    return parent[x]

def union(x, y):
    px = find(x)
    py = find(y)
    if px != py:
        parent[py] = px
```

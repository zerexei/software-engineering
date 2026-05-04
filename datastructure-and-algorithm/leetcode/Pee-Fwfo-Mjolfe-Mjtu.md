```py
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def oddEvenList(self, head: Optional[ListNode]) -> Optional[ListNode]:
        if not head or not head.next:
            return head

        # odd_indices
        odd = head # 1

        # even_indices
        even = head.next # 2
        even_head = even # 2

        # [1,2,3,4,5,6] -> indices not value
        while even and even.next:
            # two pointer (tracking)

            # 1 -> 3 | 3 -> 5
            odd.next = even.next
            odd = odd.next  # -> 3 | 5

            # 2 -> 4 | 4 -> 6
            even.next = odd.next
            even = even.next # 4 | 6

        # since indices starts from 1 which is an odd number
        odd.next = even_head # update odd indices tail next to even indices head

        return head
```

# 328. Odd Even Linked List

Given the head of a singly linked list, group all the nodes with odd indices together followed by the nodes with even indices, and return the reordered list.

The first node is considered odd, and the second node is even, and so on.

Note that the relative order inside both the even and odd groups should remain as it was in the input.

You must solve the problem in O(1) extra space complexity and O(n) time complexity.

 

Example 1:


Input: head = [1,2,3,4,5]
Output: [1,3,5,2,4]
Example 2:


Input: head = [2,1,3,5,6,4,7]
Output: [2,3,6,7,1,5,4]
 

Constraints:

The number of nodes in the linked list is in the range [0, 104].
-106 <= Node.val <= 106

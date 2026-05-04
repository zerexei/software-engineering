```py
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverseList(self, head: Optional[ListNode]) -> Optional[ListNode]:
        if not head or not head.next:
            return head

        ## iteratively
        # prev = None
        # current = head

        # # [1,2,3]
        # while current:
        #     nxt = current.next
            
        #     current.next = prev
        #     prev = current 
            
        #     current = nxt

        # return prev

        # recursive
        # [1,2,3,4,5]

        new_head = head.next # 2 | 5

        if head.next:
            #
            new_head = self.reverseList(head.next) 

            # print(head) # [4 -> 5], [3 -> 4], [2 -> 3], [1 -> 2]
            head.next.next = head # [4 -> 5 -> 4]

        # [4 -> 5 -> 4 -> 5]
        head.next = None # remove old link
        # [4 -> 5 -> 4 -> None]

        # chain: 4 -> 5 -> 4 -> 3 -> 2 -> 1 -> None

        # [5 -> 4] from new_head = head.next
        return new_head

        # 5 -> None
        # 5 -> 4 -> None
        # 5 -> 4 -> 3 -> None
        # ...
```

# 206. Reverse Linked List

Given the head of a singly linked list, reverse the list, and return the reversed list.

 

Example 1:


Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]
Example 2:


Input: head = [1,2]
Output: [2,1]
Example 3:

Input: head = []
Output: []
 

Constraints:

The number of nodes in the list is the range [0, 5000].
-5000 <= Node.val <= 5000
 

Follow up: A linked list can be reversed either iteratively or recursively. Could you implement both?


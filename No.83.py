# No.83 Remove Duplicates from Sorted List
# Runtime: 0 ms (100.00%)
# Memory Usage: 12.53 MB (28.32%)

# Definition for singly-linked list.
class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution(object):
    def deleteDuplicates(self, head):
        """
        :type head: Optional[ListNode]
        :rtype: Optional[ListNode]
        """
        if not head:
            return head
            
        current=head
        while current.next:
            if current.val==current.next.val:
                current.next=current.next.next
            else:
                current=current.next
        return head
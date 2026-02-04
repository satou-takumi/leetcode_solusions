//No.21 mergeTwoLists
// run-time 0 Ms beat 100.00%
// memory 152.46 Mb beat 6.94%

/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode dummy = ListNode(0); // 結果
    ListNode result = dummy;

    if(list1 == null && list2 == null){
        return null;
    }else if(list1 == null){
        return list2;
    }else if(list2 == null){
        return list1;
    }else{
      while(list1 != null && list2 != null){
        if(list1.val <= list2.val){
            // list1 を採用
            result.next = list1;
            list1 = list1.next;
        }else{
            // list2を採用
            result.next = list2;
            list2 = list2.next;
        }
        result = result.next!;
    }
    result.next = list1 ?? list2;
    return dummy.next;
    }
  }
}
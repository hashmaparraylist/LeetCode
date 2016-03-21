/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func mergeTwoLists(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        if l1 == nil && l2 == nil {
            return nil
        }
        
        if l1 == nil {
            return l2
        }
        
        if l2 == nil {
            return l1
        }
        
        var head1 = l1
        var head2 = l2
        var head: ListNode?, step: ListNode?
        
        if head1!.val < head2!.val {
            head = head1
            head1 = head1!.next
        } else {
            head = head2
            head2 = head2!.next
        }
        
        step = head
        
        while head1 != nil || head2 != nil {
            if head1 == nil {
                step!.next = head2
                break
            }
            
            if head2 == nil {
                step!.next = head1
                break
            }
            
            if head1!.val < head2!.val {
                step!.next = head1
                head1 = head1!.next
            } else {
                step!.next = head2
                head2 = head2!.next
            }
            
            step = step!.next
        }
        
        return head
    }
}

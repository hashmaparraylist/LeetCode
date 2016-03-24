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
    func swapPairs(head: ListNode?) -> ListNode? {
        if head == nil {
            return head
        }
        if head!.next == nil {
            return head
        }
        var step = head
        var newHead: ListNode?
        var prev: ListNode?
        while step != nil {
            if step!.next == nil {
                if newHead == nil {
                    newHead = step
                }
                break
            }
            
            let temp = step!.next
            step!.next = temp!.next
            temp!.next = step
            
            if newHead == nil {
                newHead = temp
            }
            if prev != nil {
                prev!.next = temp
            }
            prev = step
            step = step?.next
        }
        
        return newHead
    }
}

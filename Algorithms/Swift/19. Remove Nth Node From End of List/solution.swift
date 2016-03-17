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
    func removeNthFromEnd(head: ListNode?, _ n: Int) -> ListNode? {
        if (n < 0 || head == nil) {
            return nil
        }
        
        if (n == 0) {
            return head
        }
        
        let count = getListNodeCount(head!)
        
        if (n > count) {
            return nil
        }
        
        if n == count {
            return head!.next
        }
        
        let index = count - n
        var step = 0
        var current = head
        var next = head!.next
        var last: ListNode? = nil
        
        while (step < index) {
            last = current
            current = next
            next = current!.next
            step++
        }
        
        last!.next = next
        
        return head
    }
    
    func getListNodeCount(head: ListNode) -> Int {
        var size = 1
        var tmp = head
        
        while (tmp.next != nil) {
            size++
            tmp = tmp.next!
        }
        
        return size
    }
}

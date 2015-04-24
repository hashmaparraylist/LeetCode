/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */
var addTwoNumbers = function(l1, l2) {
    var head;
    var step;
    head = step = null;
    var h1 = l1;
    var h2 = l2;
    var overload = 0;
    while(h1 !== null || h2 !== null) {
        var newVal = 0;
        if (h1 !== null) {
            newVal += h1.val;
        }
        if (h2 !== null) {
            newVal += h2.val;
        }
        newVal += overload;
        if (newVal >= 10) {
            newVal -= 10;
            overload = 1;
        } else {
            overload = 0;
        }
        var node = new ListNode(newVal);
        if (step === null) {
          head = step = node;
        } else {
          step.next = node;
          step = step.next;
        }
        if (h1 !== null) {
          h1 = h1.next;
        }
        if (h2 !== null) {
          h2 = h2.next;
        }
    }
    
    if (overload > 0) {
        var lastNode = new ListNode(overload);
        step.next = lastNode;
        step = step.next;
    }
    
    return head;
};


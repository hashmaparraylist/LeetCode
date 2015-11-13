/**
 * @param {number} x
 * @return {boolean}
 */
var isPalindrome = function(x) {
    if (x === 0) return true;
    if (x < 0) return false;
    if (x < 10) return true;

    var src = x;
    var dest = 0;

    while(parseInt(src / 10) > 0) {
        dest = dest * 10 + src % 10;
        src = parseInt(src / 10);
    }

    dest = dest * 10 + src % 10;

    if (x == dest) {
        return true;
    }
    return false;
};

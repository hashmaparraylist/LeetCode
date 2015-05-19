/**
 * @param {number} x
 * @return {number}
 */
var reverse = function(x) {

    if (x === 0) return x;
    var tmp = 0;
    if (x < 0) {
        tmp = Math.abs(x);
    } else {
        tmp = x;
    }
    
    var result = 0;
    while(tmp > 0) {
        result = result * 10 + (tmp % 10);
        tmp = Math.floor(tmp / 10);
    }
    
    if (x < 0) {
        result = result * -1;
    }
    
    if (result > 2147483647) {
        result = 0;
    } else if (result < -2147483648) {
        result = 0;
    }
    
    return result;
};


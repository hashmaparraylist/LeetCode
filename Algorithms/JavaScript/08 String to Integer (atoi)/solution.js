/**
 * @param {string} str
 * @return {number}
 */
var myAtoi = function(str) {
    var ZERO = 0;

    var PLUS_CHARCODE = 43;
    var MINUS_CHARCODE = 45;
    var DOT_CHARCODE = 46;
    
    var ZERO_CHARCODE = 48;
    var NINE_CHARCODE = 57;

    var non_whitespace = str.trim();
    
    if (non_whitespace.length === 0) {
        return ZERO;
    }

    var result = 0;
    
    var isPlus = true;

    for (var index = 0; index < non_whitespace.length; index++) {
        var code = non_whitespace.charCodeAt(index);
        
        if (code >= ZERO_CHARCODE && code <= NINE_CHARCODE) {
            result = result * 10 + (code - ZERO_CHARCODE);
        } else if(code === PLUS_CHARCODE && index !== 0) {
            return ZERO;
        } else if(code === PLUS_CHARCODE && index === 0) {
            continue;
        } else if(code === MINUS_CHARCODE && index !== 0) {
            return ZERO;
        } else if(code === MINUS_CHARCODE && index === 0) {
            isPlus = false;
            continue;
        } else {
            return ZERO;
        }
    }

    if (!isPlus) {
        result *= -1;
    }
    
    if (result > 2147483647) {
        return 2147483647;
    }

    if (result < -2147483648) {
        return -2147483648;
    }

    return result;
};

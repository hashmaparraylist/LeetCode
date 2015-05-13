/**
 * @param {string} s
 * @param {number} numRows
 * @return {string}
 */
var convert = function(s, numRows) {
 
    if (s === "") return s;
    
    var vecstr = [];
    var res = "";
    var bounce = 0, direct = 1;
    for (var i = 0; i <= s.length - 1; ++i) {
        if (vecstr[bounce] === undefined) {
            vecstr[bounce] = '';
        }
        vecstr[bounce] += s[i];
        if (numRows === 1) continue;
        else if (bounce === (numRows-1)) direct = -1;
        else if (bounce === 0) direct = 1;
        bounce += direct;
    }
    //console.log(vecstr);
    for (i = 0; i <= (numRows - 1); ++i) {
        if (vecstr[i] !== undefined) {
            res += vecstr[i];
        }
    }
    return res;

};
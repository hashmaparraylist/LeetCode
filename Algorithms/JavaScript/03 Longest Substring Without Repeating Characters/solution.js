/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLongestSubstring = function(s) {
  var used = {};
  var maxlength, strat;
  maxlength = start = 0;
  for(var i = 0; i < s.length; i++) {
    if(used[s.charAt(i)] !== undefined && start <= used[s.charAt(i)]) {
      start = used[s.charAt(i)] + 1;
    } else {
      maxlength = maxlength > (i - start + 1) ? maxlength :  (i - start + 1);
    }
    used[s.charAt(i)] = i;
  }
  return maxlength;
};


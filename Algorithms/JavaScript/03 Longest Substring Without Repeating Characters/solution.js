/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLongestSubstring = function(s) {
  var spliteString = [];
  var tmpString = [];
  var i = 0;
  while(i < s.length) {
    var c = s.substr(i, 1);
    tmpString.push({
       str : c,
       len : 1,
    });
    var len = tmpString.length - 2;
   
    for(var j = len; j >= 0; j--) {
      if (tmpString[j].str.indexOf(c) === -1 ) {
          var tmp = tmpString[j].str + c;
          tmpString[j].str = tmp;
          tmpString[j].len = tmp.length;
      } else {
        if (spliteString.length > 0) {
          spliteString[0] = (spliteString[0].len > tmpString[0].len) ? spliteString[0] : tmpString[0];
        } else {
          spliteString[0] = tmpString[0];
        }
        tmpString.splice(0, j + 1);
        break;
      }
    }
   
    i++;
  }

  //tmpString.forEach(function(element) {
  if(tmpString.length > 0) {
    if (spliteString.length > 0) {
      spliteString[0] = (spliteString[0].len > tmpString[0].len) ? spliteString[0] : tmpString[0];
    } else {
      spliteString[0] = tmpString[0];
    }
  }
  //});

  if (spliteString.length === 0) {
    return 0;
  }
  return spliteString[0].len;
};

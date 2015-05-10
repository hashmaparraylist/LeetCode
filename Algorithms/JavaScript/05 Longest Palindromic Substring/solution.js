/**
 * Use Manacher's ALGORITHM
 * like http://blog.csdn.net/insistgogo/article/details/12287805
 *      http://en.wikipedia.org/wiki/Longest_palindromic_substring
 * @param {string} s
 * @return {string}
 */
var longestPalindrome = function(s) {

    var id, mx;
    id = mx = 0;

    var T = "";
    for (var i = 0; i < s.length; i++) {
        T += s.charAt(i) + "#";
    }
    T = "$#" + T;

    var p = [];
    p[0] = 0;
    for (i = 1; i < T.length; i++) {
        if (mx > i) {
            if (p[2 * id - i] < (mx -i)) {
                p[i] = p[2 * id - i];
                continue;
            } else if (p[2 * id - i] > (mx - i)) {
                p[i] = mx - i;
                continue;
            } else {
                p[i] = mx - i;
            }
        } else {
            p[i] = 1;
        }

        while(T.charAt(i + p[i]) === T.charAt(i - p[i])) {
            p[i]++;
        }
        if ((i + p[i]) > mx) {
            id = i;
            mx = i + p[i];
        }
    }

    id = 0;
    var max = 0;
    for (i = 0; i < p.length; i++) {
        if(p[i] > max) {
            max = p[i];
            id = i;
        }
    }

    var pal = T.substr(id - max + 1, (max - 1) * 2);
    return pal.replace(/#/g,"");
};


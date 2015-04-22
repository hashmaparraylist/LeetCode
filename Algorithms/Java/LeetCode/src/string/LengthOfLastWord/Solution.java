package string.LengthOfLastWord;

public class Solution {
    public int lengthOfLastWord(String s) {
        if ((null == s) || ("".equals(s))) {
            return 0;
        }

        if (s.indexOf(' ') < 0) {
            return s.length();
        }
        String[] words = s.split(" ");
        if (words.length < 1) {
            return 0;
        }

        return words[words.length - 1].length();
    }
}

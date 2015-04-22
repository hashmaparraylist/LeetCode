package string.ReverseWordsInAString;

public class Solution {
    public String reverseWords(String s) {
        if (s==null) return s;
        if (s.equals("")) return s;

        String[] words = s.trim().split(" ");

        if (words.length <= 0) return "";
        //if (words.length == 1) return s;
        String newWords = "";
        for(int i = words.length - 1; i >= 0; i--) {
            if (words[i].equals("")) {
                continue;
            }
            newWords = newWords + words[i] + " ";
        }

        if (newWords.trim().equals("")) {
            return "";
        }

        return newWords.substring(0, newWords.length() - 1);
    }
}

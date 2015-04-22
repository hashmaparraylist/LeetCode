package string.ValidPalindrome;

public class Solution {
    public boolean isPalindrome(String s) {
        int i = 0;
        int j = s.length() - 1;
        String temp = s.toLowerCase();
        while (i < j) {
            char p = temp.charAt(i);
            char q = temp.charAt(j);

            if (!isAlphanumeric(p)) {
                i++;
                continue;
            }

            if (!isAlphanumeric(q)) {
                j--;
                continue;
            }

            if (p != q) {
                return false;
            }
            i++;
            j--;
        }
        return true;
    }

    private boolean isAlphanumeric(char a) {
        if ((a >= 48) && (a <= 57)) return true;
        if ((a >= 65) && (a <= 90)) return true;
        if ((a >= 97) && (a <= 122)) return true;
        return false;
    }
}

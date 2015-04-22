package math.PalindromeNumber;

public class Solution {

    public boolean isPalindrome(int x) {
        long p = x;
        long q = reverse(p);

        if (p < 0) return false;
        if (p == q) return true;
        return false;
    }

    public long reverse(long x) {
        long org = x;
        long result = 0;
        if (x < 0)
            org *= -1;

        while (org > 0) {
            long mod = org % 10;
            result = result * 10 + mod;
            org /= 10;
        }

        if (x < 0)
            result *= -1;

        return result;
    }

}

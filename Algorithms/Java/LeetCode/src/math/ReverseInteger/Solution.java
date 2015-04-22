package math.ReverseInteger;

public class Solution {
    public int reverse(int x) {
        long org = x;
        long result = 0;
        if (x < 0) org *= -1;

        while(org > 0) {
            long mod = org % 10;
            result = result * 10 + mod;
            org /= 10;
        }

        if (x < 0) result *= -1;

        if (result > Integer.MAX_VALUE) {
            return Integer.MAX_VALUE;
        }

        if (result < Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }

        return (int) result;
    }
}

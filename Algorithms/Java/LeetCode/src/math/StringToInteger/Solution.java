package math.StringToInteger;

public class Solution {
    public int atoi(String str) {
        try {

            String temp = str.trim();
            boolean isMinus = false;
            if (temp.charAt(0) == 45) {
                isMinus = true;
                temp = temp.substring(1, temp.length());
            } else if (temp.charAt(0) == 43) {
                isMinus = false;
                temp = temp.substring(1, temp.length());
            }
            StringBuffer sb = new StringBuffer();
            for(int i = 0; i < temp.length(); i++) {
                char letter = temp.charAt(i);
                if (letter < 48 || letter > 57) {
                    break;
                }
                sb.append(letter);
            }

            String number = sb.toString();

            if (number.length() == 0) {
                return 0;
            }

            long result = Long.parseLong(number);
            if (isMinus) {
                result *= -1;
            }

            if (result > Integer.MAX_VALUE) {
                return Integer.MAX_VALUE;
            }
            if (result < Integer.MIN_VALUE) {
                return Integer.MIN_VALUE;
            }

            return (int) result;
        } catch (Exception ex) {
            return 0;
        }
    }
}

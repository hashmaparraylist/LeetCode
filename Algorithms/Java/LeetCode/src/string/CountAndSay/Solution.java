package string.CountAndSay;

import java.util.ArrayList;
import java.util.List;

public class Solution {
    public String countAndSay(int n) {
        if (n == 1) return "1";
        //if (n == 2) return "11";
        int i = 2;
        String prev = "11";
        while (i < n) {
            prev = says(prev);
            i++;
        }

        return String.valueOf(prev);
    }

    private String says(String n) {
        List<Integer> count = new ArrayList<Integer>();
        List<Integer> queue = new ArrayList<Integer>();

        for(int i = 0; i < n.length(); i++) {
            int mod = Integer.parseInt(n.substring(i, i + 1));

            if (queue.size() > 0) {
                int last = queue.get(queue.size()-1);
                if (last == mod) {
                    int c = count.get(count.size() - 1);
                    c++;
                    count.set(count.size() - 1, c);
                } else {
                    queue.add(mod);
                    count.add(1);
                }
            } else {
                queue.add(mod);
                count.add(1);
            }
        }

        String say = "";
        for(int i = 0; i < queue.size(); i++) {
            Integer data = queue.get(i);
            int c = count.get(i);
            String tmp = String.valueOf(c) + data.toString();
            say += tmp;
        }

        return say;
    }
}

package BitManipulation.SingleNumberII;

import java.util.ArrayList;
import java.util.List;

public class Solution {
    public int singleNumber(int[] A) {
        List<Integer> except = new ArrayList<Integer>();

        for(int i = 0; i < A.length; i++) {
            int j = i + 1;
            if (except.contains(A[i])) {
                continue;
            }
            for(; j < A.length; j++) {
                if (A[i] == A[j]) {
                    except.add(A[i]);
                    break;
                }
            }
            if (j == A.length) {
                return A[i];
            }
        }

        return A[A.length - 1];
    }
}

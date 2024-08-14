public class Solution {
    public bool IsPowerOfThree(int n) {
        double power = Math.Log10(n)/Math.Log10(3);
        if(power%1 == 0){
            return true;
        }
        return false;
    }
}
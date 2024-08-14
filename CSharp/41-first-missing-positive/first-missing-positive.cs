public class Solution {
    public int FirstMissingPositive(int[] nums) {
        int ans = 1;
        while(nums.Contains(ans)){
            ans +=1;
        }
        return ans;
    }
}
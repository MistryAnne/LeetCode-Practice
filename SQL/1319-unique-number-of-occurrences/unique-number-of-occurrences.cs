public class Solution {
    public bool UniqueOccurrences(int[] arr) {
        Dictionary <int, int> dictionary = new Dictionary <int,int>();
        foreach (int i in arr){
            if (dictionary.ContainsKey(i)){
                dictionary[i] += 1;
            }
            else{
                dictionary.Add(i,1);
            }
        }
        List<int> vals = new List<int>();
        foreach(KeyValuePair<int,int> pair in dictionary){
            if(vals.Contains(pair.Value)){
                return false;
            }
            else{
                vals.Add(pair.Value);
            }
        }
        return true;
    }
}
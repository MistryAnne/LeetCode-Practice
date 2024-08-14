public class Solution {
    public string ReverseWords(string s) {
        string[] listString = s.Split(' ', StringSplitOptions.RemoveEmptyEntries);
        int length = listString.Length - 1;
        string newStr = listString[length];
        for(int i = length -1; i >= 0; i--){
            if(listString[i] != " "){
                newStr += " " +listString[i];
            }
        }
        return newStr;
    }
}
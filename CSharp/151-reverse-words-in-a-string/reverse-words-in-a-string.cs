public class Solution {
    public string ReverseWords(string s) {
        string[] listString = s.Split(' ', StringSplitOptions.RemoveEmptyEntries);
        int length = listString.Length - 1;
        string newStr = "";
        for(int i = length; i >= 0; i--){
            if(listString[i] != " "){
                newStr += " " +listString[i];
            }
        }
        return newStr.Substring(1);
    }
}
// No.28 implement strStr
// run-time 0 Ms beat 100.00%
// memory 151.41 Mb beat 15.13%

class Solution {
  int strStr(String haystack, String needle) {
    if(haystack.contains(needle)){
        // 文字列が部分一致する
        int index = haystack.indexOf(needle);
        return index;
    }else{
        // 文字列が部分一致しない
        return -1;
    }
  }
}
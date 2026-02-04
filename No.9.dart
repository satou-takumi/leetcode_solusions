// No.9 isPalindrome
// run-time 2 Ms beat 100.00%
// memory 151.16 Mb beat 74.80%

class Solution {
  bool isPalindrome(int x) {
    if(x<0){
        return false;
    }
    int original = x;
    int reversed = 0;
    // 逆数に変換
    while(x>0){
        var value = x%10;
        reversed = reversed *10 + value;
        x=x~/10;
        }

    // 回文数チェック
    if(original == reversed){
        return true;
    }else{
        return false;
    }      
  }  
}
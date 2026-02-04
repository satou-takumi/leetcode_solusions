//No.13 romanToInt
//run-time 14 Ms beat 35.87%
//memory 152.32 Mb beat 18.54% 

class Solution {
  int romanToInt(String s) {
    Map<String, int> romanMap = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    };

    int ans = 0;
    for (int i = 0; i < s.length; i++) {
        int current = romanMap[s[i]]!;// 先頭の文字を格納
        int next = 0;// 次の文字（右隣）を格納
        if(i+1<s.length){
            // 最後の文字でない
            next = romanMap[s[i+1]]!;
        }else{
            // 最後の文字である
            next = 0;
        }
        if (current < next) {
            // 現在位置の文字 < 右隣の場合
            ans -= current; // 例: IV -> I(1) < V(5) → -1　＊まず-1を足し、次に5を足す
        } else {
          ans += current;
        }
    }
    return ans;
  }
}
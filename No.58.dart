// No.58 lengthOfLastWord
// run-time 6 Ms beat 5.17%
// memory 148.94 Mb beat 47.74%

class Solution {
  int lengthOfLastWord(String s) {
    // 連続する空白、文字列の最初と最後の位置を含む空白を除いて配列に格納する
    List<String> array=s.split(RegExp(r'\s+')).where((e) => e.isNotEmpty).toList();
    return array[array.length -1].length;
  }
}
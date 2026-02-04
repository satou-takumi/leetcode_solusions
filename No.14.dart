// No.14 longestCommonPrefix
// run-time 0 Ms beat 100.00%
// memory 151.93 Mb beat 8.71%

class Solution {
  String longestCommonPrefix(List<String> strs) {
    // 例　{flower, flow, flight}
    
    if(strs.isEmpty) return "";

    String prefix =strs[0];// 1つ目の単語を格納 flower

    //２つ目以降の単語をチェック flow, flight
    for(int i=1;i<strs.length;i++){
        // １つ目の単語の文字と一致する単語がない場合はbreak
        while(strs[i].indexOf(prefix) !=0){
            // １つ目の単語の後ろから1文字ずつ減らした文字をprefixに格納　flowe,flow,flo...
            // 減らしていくため、一致する文字列の中で最長のものが最初に見つけられる
            prefix = prefix.substring(0,prefix.length-1);
            // whileループの最後の処理
            // prefixの文字が減らされて最終的に０になった時、一致する文字がないので""を返す
            if(prefix.isEmpty) return "";
        }
    }
    return prefix;
  }
}
//No.20 validParentheses
// run-time 8 Ms beat 31.69% 
// memory 148.30 Mb beat 70.07%
// I spent 1 hour.

class Solution {
  bool isValid(String s) {
    int flag1=0,flag2=0,flag3=0;
    Map<String,int> map={
        '(':0,
        ')':1,
        '{':2,
        '}':3,
        '[':4,
        ']':5
    };
    List<int?> order=[];

    for(int i=0;i<s.length;i++){
        if(map[s[i]] == 0) {flag1++; order.add(map[s[i]]);}
        if(map[s[i]] == 2) {flag2++; order.add(map[s[i]]);}
        if(map[s[i]] == 4) {flag3++; order.add(map[s[i]]);}
        if(map[s[i]] == 1){
            if(flag1 == 0){
                // 開きカッコなしに閉じる場合
                return false;
            }else if(map[s[i-1]] == 2 || map[s[i-1]] == 4){
                // 直前が異種開きカッコ
                return false;
            }else if(map[s[i-1]] == 0){
                // 直前が同種開きカッコ
                flag1--;
                order.removeLast();
            }else if(flag1 != 0){
                // カッコの辻褄が合う
                if(order.last != 0){
                    return false;
                }
                flag1--;
                order.removeLast();
            }
        }
        if(map[s[i]] == 3){
            if(flag2 == 0){
                return false;
            }else if(map[s[i-1]] == 0 || map[s[i-1]] == 4){
                return false;
            }else if(map[s[i-1]] == 2){
                flag2--;
                order.removeLast();
            }else if(flag2 != 0){
                if(order.last != 2){
                    return false;
                }
                flag2--;
                order.removeLast();
            }
        }
        if(map[s[i]] == 5){
            if(flag3 == 0){
                return false;
            }else if(map[s[i-1]] == 0 || map[s[i-1]] == 2){
                return false;
            }else if(map[s[i-1]] == 4){
                flag3--;
                order.removeLast();
            }else if(flag3 != 0){
                if(order.last != 4){
                    return false;
                }
                flag3--;
                order.removeLast();
            }
        }
    }
    if(flag1 ==0 && flag2 ==0 && flag3 ==0){
        return true;
    }else{
        return false;
    }
  }
}
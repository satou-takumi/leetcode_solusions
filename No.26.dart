// No.26 removeDuplicates
// run-time 0 Ms beat 100.00%
// memory 152.34 Mb beat 14.43%

class Solution {
  int removeDuplicates(List<int> nums) {
    int k=0; // 重複をカウント
    int j=0; // ポインタ
    for(int i=1;i<nums.length;i++){
        if(nums[i] != nums[j]){
            // 重複しない場合
            nums[k+1] = nums[i];
            k++;
            j++;
        }else{
            // 重複する場合
            j++;
        }
    }
    return k + 1;
  }
}
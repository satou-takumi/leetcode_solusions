//No.27 removeElement
// run-time 0 Ms beat 100.00%
// memory 149.72 Mb beat 41.78%

class Solution {
  int removeElement(List<int> nums, int val) {
    int k=0;

    for(int i=0;i<nums.length;i++){
        if(nums[i] != val){
            // numsとvalが不一致
            k++;
        }else{
            // numsとvalが一致
            nums.removeAt(i);
            i--;
        }
    }
    return k;
  }
}
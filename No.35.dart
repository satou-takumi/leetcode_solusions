// No.35 searchInsert
//run-time 0 Ms beat 100.00%
//memory 146.80 Mb beat 98.13%

class Solution {
  int searchInsert(List<int> nums, int target) {
    int count = 0;
    int i=0;
    int index=0;
    for(i = 0;i < nums.length;i++){
        if(target == nums[i]){
            index=i;
            break;
        }else if(target > nums[i]){
            count++;
        }
        index = count;   
    }
    return index;
  }
}

// run-time 0 Ms beat 100.00%
// memory 150.24 Mb beat 98.13%

class Solution {
  int searchInsert(List<int> nums, int target) {
    int count = 0;
    int i=0;
    int index=0;
    for(i = 0;i < nums.length;i++){
        if(target == nums[i]){
            index=i;
            break;
        }else if(target > nums[i]){
            count++;
        }
        index = count;   
    }
    return index;/*
    if(count == nums.length){
        for(i=0;nums[i]<=target;i++){
            index++;
        }
        return index;
    }else{
        return i;
    }*/
  }
}
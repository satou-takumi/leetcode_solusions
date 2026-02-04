// No.1 twoSum
//run-time 6 Ms beat 72.80%
//memory 147.52 Mb beat 91.28%
// I spent 1 hour.
class Solution {
  List<int> twoSum(List<int> nums, int target) { 
    Map index={};   
    
    for(int i=0;i<nums.length;i++){
        var key = target - nums[i];
        
        if(index.containsKey(key)){
            return [index[key],i];
        }
        index[nums[i]] = i;
    }
    return [];
  }
}

// run-time 88 Ms beat 11.58%
class Solution {
  List<int> twoSum(List<int> nums, int target) {    
    for(int i=0;i<nums.length;i++){
        for(int j=1;j<nums.length;j++){
            if(i!=j){
                if(nums[i]+nums[j]==target)
                    return [i,j]; 
            }
        }
    }
  return [];
  }
}
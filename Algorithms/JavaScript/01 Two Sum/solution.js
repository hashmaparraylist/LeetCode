/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    var result = [];
    
    var sorted = [];
    for(var i = 0; i < nums.length; i++) {
        sorted[i] = {
            'index': i,
            'number': nums[i]
        };
    }
    sorted.sort(function(a, b) {
      return a.number - b.number;
    });
    
    for(i = 0; i < sorted.length; i++) {
        var sub = target - sorted[i].number;
        var index = binarySearch(sorted, sub, i + 1, sorted.length - 1);
        if (index > -1 && index != i) {
            result[0] = (sorted[i].index < sorted[index].index) ? sorted[i].index + 1 : sorted[index].index + 1;
            result[1] = (sorted[i].index > sorted[index].index) ? sorted[i].index + 1 : sorted[index].index + 1;
        }
    }
    return result;
};

var bubbleSort = function(nums) {
    for(var i = 0; i < nums.length - 1; i++) {
        for(var j = 0; j < nums.length - 1 - i; j++) {
            if(nums[j].number > nums[j + 1].number) {
                var tmp = nums[j + 1];
                nums[j + 1] = nums[j];
                nums[j] = tmp;
            }
        }
    }
    return nums;
};

// binary sort;
var binarySearch = function(arr, target, begin, end) {
    if (begin > end) return -1;
    var binary = Math.floor((begin + end) / 2);
    if (arr[binary].number ==  target) {
        return binary;
    }
    if (arr[binary].number > target) {
        return binarySearch(arr, target, begin, binary - 1);
    } else {
        return binarySearch(arr, target, binary + 1, end);
    }
};

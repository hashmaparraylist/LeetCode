/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number}
 */
var findMedianSortedArrays = function(nums1, nums2) {
    Array.prototype.push.apply(nums1, nums2);
    nums1.sort(function(a, b) {
        return a - b;
    });
    return findMedian(nums1);
};

var findMedian = function(arr) {
  if (arr.length === 0) return 0;
  if ((arr.length % 2) === 0) return (arr[arr.length/2] + arr[arr.length/2 - 1]) /2;
  if ((arr.length % 2) !== 0) return arr[Math.ceil(arr.length/2) - 1];
  return 0;
};

from typing import List


class Solution:
    @staticmethod
    def twoSum(nums: List[int], target: int) -> List[int]:
        iterated = {}

        for i, num in enumerate(nums):
            diff = target - num
            if diff in iterated:
                return [iterated[diff], i]

            iterated[num] = i


print(Solution.twoSum([2, 7, 11, 15], 9))  # [0, 1]

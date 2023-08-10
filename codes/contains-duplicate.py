from typing import List


class Solution:
    @staticmethod
    def containsDuplicate(nums: List[int]) -> bool:
        iterated = set()

        for n in nums:
            if n in iterated:
                return True
            iterated.add(n)
        return False


print(Solution.containsDuplicate([1, 2, 1]))  # True

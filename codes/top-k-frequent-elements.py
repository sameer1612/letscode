from typing import List
from collections import Counter
from functools import cmp_to_key


def compare(a, b):
    return b[1] - a[1]


class Solution:
    @staticmethod
    def topKFrequent(nums: List[int], k: int) -> List[int]:
        freq_list = sorted(Counter(nums).items(), key=cmp_to_key(compare))
        return [x[0] for x in freq_list[:k]]


print(Solution.topKFrequent([1, 1, 1, 2, 2, 3], 2))  # [1,2]

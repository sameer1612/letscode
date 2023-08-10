from collections import Counter


class Solution:
    @staticmethod
    def isAnagram(s: str, t: str) -> bool:
        return Counter(s) == Counter(t)


print(Solution.isAnagram('aba', 'baa'))  # True

from typing import List


class Solution:
    @staticmethod
    def groupAnagrams(strs: List[str]) -> List[List[str]]:
        anagrams = {}
        for word in strs:
            sorted_str = "".join(sorted(word))
            if anagrams.get(sorted_str):
                anagrams[sorted_str] = [*anagrams[sorted_str], word]
            else:
                anagrams[sorted_str] = [word]

        return [*anagrams.values()]


print(
    Solution.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
)  # [["bat"],["nat","tan"],["ate","eat","tea"]]

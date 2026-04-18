class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if len(strs) == 0:
            return ""
        
        prefix : str = strs[0]

        for i in range(1, len(strs)):
            while not strs[i].startswith(prefix):
                prefix = prefix[0: len(prefix) - 1] #we remove the last letter until it matches the LCP
                if prefix == "":
                    return ""
        return prefix


        

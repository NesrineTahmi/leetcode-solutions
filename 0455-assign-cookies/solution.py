class Solution:
    def findContentChildren(self, g: List[int], s: List[int]) -> int:
        child_ptr : int = 0
        cookie_ptr : int = 0
        g.sort()
        s.sort()
        while child_ptr < len(g) and cookie_ptr < len(s):
            if s[cookie_ptr] >= g[child_ptr]:
                child_ptr += 1
            cookie_ptr += 1
        return child_ptr

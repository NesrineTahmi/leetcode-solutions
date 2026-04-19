from collections import deque

class Solution:
    def isValid(self, s: str) -> bool:
        stack = deque()

        opening = ['(', '[', '{']
        closing = [')', ']', '}']

        for c in s:
            if c in opening:
                stack.append(c)
            
            if c in closing:
                idx = closing.index(c)

                if not stack:
                    return False

                if (stack[-1] == opening[idx]):
                    stack.pop()
                else:
                    return False
        
        return not stack


class Solution:
    def sumOfGoodIntegers(self, n: int, k: int) -> int:
        sum : int = 0
        for i in range(max(0, n - k), n+k+1):
            if n&i == 0:
                sum += i

        return sum
        

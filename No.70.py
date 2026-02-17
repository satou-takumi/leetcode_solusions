# No.70 Climing Stairs
# Runtime: 0 ms (100.00%)
# Memory Usage: 12.41 MB (57.88%)
class Solution(object):
    def climbStairs(self, n):
        """
        :type n: int
        :rtype: int
        """ 
        if n<3:
            return n
        # フィボナッチ数列
        a,b=1,2
        for _ in range(3,n+1):
            a,b=b,a+b
        return b
                         
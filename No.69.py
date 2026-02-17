# No.69 Sqrt(x)
# run-time 0 Ms beat 100.00%
# memory 12.52 Mb beat 18.99%
# I spent 3 minutes.

import math
class Solution(object):
    def mySqrt(self, x):
        """
        :type x: int
        :rtype: int
        """
        sq_root=math.sqrt(x)
        return int(sq_root)
        
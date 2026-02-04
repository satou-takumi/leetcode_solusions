# No.66 plusOne
# run-time 0 Ms beat 100%
# memory 12.27 Mb beat 99.47%
# I spent 1 hour.
class Solution(object):
    def plusOne(self, digits):
        """
        :type digits: List[int]
        :rtype: List[int]
        """
        n=len(digits)
        j=1
        val=0
        result=[]
        for i in digits:
            val = val*10 +i
        val+=1
        while val>0:
            # 余りを格納（最下位桁の数を先頭から格納）
            result.append(val%10)
            # 商を残す
            val = val//10
        result.reverse()
        return result

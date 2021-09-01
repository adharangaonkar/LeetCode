class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        mxP = 0
        for i in range(1, len(prices)):
            if prices[i] > prices[i-1]:
                mxP, prices[i] = max(mxP, prices[i] - prices[i-1]), prices[i-1]
        return mxP
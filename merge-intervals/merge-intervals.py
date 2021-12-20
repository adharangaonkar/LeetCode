class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        if len(intervals) == 1:
            return intervals
        
        intervals.sort()
        
        results = []
        
        low, high = None, None
        
        for pair in intervals:
            
            if low == high == None:
                low, high = pair[0], pair[1]
                
                
            elif high >= pair[0] and pair[1] >= low:  
                low = min(pair[0], low)
                high = max(pair[1], high)
                
            else:
                results.append([low,high])
                low, high = pair[0], pair[1]
            
        
        if low != None and high != None:
            results.append([low,high])
                
        return results
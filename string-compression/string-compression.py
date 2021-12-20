class Solution:
    def compress(self, chars: List[str]) -> int:
        n=len(chars)
        i=0
        j=0
        
        while j<len(chars):
            while j<len(chars)-1 and chars[j]==chars[j+1]:
                j+=1
            
            freq=(j-i+1)
            
            if i==j:
                j+=1
                i=j
                continue
            
            while j-i!=0:
                chars.pop(j)
                j-=1
            
            for val in str(freq):
                j+=1
                chars.insert(j,val)
            j+=1
            i=j
            
        
        return len(chars)
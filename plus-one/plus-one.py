class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        lst = []
        string = ""
        for i in digits:
            string = string+str(i)
        inte = int(string)    
        inte = inte+1
        inte = str(inte)
        for i in inte:
            lst.append(int(i))
        return lst    
        
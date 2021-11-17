class Solution:
    def fizzBuzz(self, n: int) -> List[str]:
        lst = []
        for i in range(1, n+1):
            lst.append(i)
        for i in range(len(lst)):

            if lst[i] %3==0 and lst[i] %5==0:
                lst[i] = "FizzBuzz"

            elif lst[i] %3 ==0 and lst[i] %5!=0:
                lst[i] = "Fizz"

            elif lst[i] %5 ==0 and lst[i] %3!=0:
                lst[i] = "Buzz"



            else:

                lst[i] = str(lst[i])
                
        return lst        
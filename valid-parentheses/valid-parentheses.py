class Solution:
    def isValid(self, s: str) -> bool:
        opening = {"(", "{", "["}
        pairs = {("(", ")"), ("{", "}"), ("[", "]")}
        stack = []

        # Edge case
        if len(s)%2 != 0:
            return False

        for i in s:
            if i in opening:
                stack.append(i)

            else:
                if len(stack) ==0:
                    return False

                last_opening = stack.pop()
                if (last_opening, i) not in pairs:
                    return False

        return len(stack) ==0  
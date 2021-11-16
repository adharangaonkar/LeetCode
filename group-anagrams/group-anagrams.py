class Solution(object):
    def groupAnagrams(self, strs):
        # ans = collections.defaultdict(list)
        # for s in strs:
        #     ans[tuple(sorted(s))].append(s)
        # return ans.values()
        hashDict = {}
        for i in range(len(strs)):
            s = ''.join(sorted(strs[i]))
            if s not in hashDict:
                hashDict[s] = [strs[i]]
            else:
                hashDict[s].append(strs[i])
        return hashDict.values()   
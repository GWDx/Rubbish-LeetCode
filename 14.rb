def longest_common_prefix(strs)
    allStrLen = strs.map { |s| s.length }
    strLenMin = allStrLen.min
    prevSame = ''
    (0..strLenMin-1).each { |i|
        same = strs[0][..i]
        allCompare = strs.map{ |s| s[..i] == same }
        if allCompare.include? false
            return prevSame
        end
        prevSame = same
    }
    return prevSame
end

p longest_common_prefix ["flower","flow","flight"]
p longest_common_prefix ["dog","racecar","car"]
p longest_common_prefix [""]
p longest_common_prefix ["a"]

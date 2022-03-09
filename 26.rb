require 'set'

def remove_duplicates(nums)
    set = Set.new nums
    len = set.length
    flattened = set.to_a
    (0..len-1).each { |i|
        nums[i] = flattened[i]
    }
    p nums
    return len
end

p remove_duplicates [1,1,2]     # 2
p remove_duplicates [0,0,1,1,1,2,2,3,3,4]   # 5

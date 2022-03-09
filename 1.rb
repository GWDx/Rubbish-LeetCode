require 'set'

def two_sum(nums, target)
    set = Set.new nums
    set.each { |a|
        b = target-a
        if set.include? b
            aIndex = nums.index a
            bIndex = nums.rindex b
            if aIndex != bIndex
                return [aIndex,bIndex]
            end
        end
    }
end

p two_sum([2,7,11,15], 9)   # [0,1]
p two_sum([3,2,4], 6)       # [1,2]
p two_sum([3,3], 6)         # [0,1]

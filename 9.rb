# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    str = x.to_s
    str.reverse == str
end

p is_palindrome(121)    # true
p is_palindrome(-121)   # false
p is_palindrome(10)     # false

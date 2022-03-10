def roman_to_int(s)
    ans=0
    s.gsub!('CM') {ans += 900}
    s.gsub!('M') {ans += 1000}
    s.gsub!('CD') {ans += 400}
    s.gsub!('D') {ans += 500}
    s.gsub!('XC') {ans += 90}
    s.gsub!('C') {ans += 100}
    s.gsub!('XL') {ans += 40}
    s.gsub!('L') {ans += 50}
    s.gsub!('IX') {ans += 9}
    s.gsub!('X') {ans += 10}
    s.gsub!('IV') {ans += 4}
    s.gsub!('V') {ans += 5}
    s.gsub!('I') {ans += 1}
    ans
end

p roman_to_int('III')       # 3
p roman_to_int('LVIII')     # 58
p roman_to_int('MCMXCIV')   # 1994

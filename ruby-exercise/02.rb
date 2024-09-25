# print <<EOF
#   --------------------------------------------------------------------------------------------
#   Create a function that takes an array of numbers nums as an argument. 
#   Square each number in the array if the number is even and square root √ the number if it is odd. 
#   Return the sum of the new array rounded to two decimal places.

#   [2, 4, 9] -> 23
#   2 ** 2 + 4 ** 2 + √9 = 4 + 16 + 3 = 23
#   using: Reduce
#   --------------------------------------------------------------------------------------------
#   Example
#     nums_reduce([1, 3, 3, 1, 10]) -> 105.46
#     nums_reduce([1, 31, 3, 11, 0]) -> 11.62
#     --------------------------------------------------------------------------------------------
#     ------------------------------------------OUTPUT--------------------------------------------
# EOF

def nums_reduce(nums)
  nums.reduce(0){|total, current_num| 
    current_num.odd? ? total+ Math.sqrt(current_num) : total + current_num*current_num   
  }.round(2)
end

puts nums_reduce([1, 3, 3, 1, 10])
puts nums_reduce([1, 31, 3, 11, 0])
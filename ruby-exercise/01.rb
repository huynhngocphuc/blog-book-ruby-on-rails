# print <<EOF
#   --------------------------------------------------------------------------------------------
#   Create a function that takes an array of numbers nums as an argument. 
#   Square each number in the array if the number is even and square root √ the number if it is odd. 
#   Return the sum of the new array rounded to two decimal places.

#   [2, 4, 9] -> 23
#   2 ** 2 + 4 ** 2 + √9 = 4 + 16 + 3 = 23
#   using: Sum
#   --------------------------------------------------------------------------------------------
#   Example
#     nums_sum([1, 3, 3, 1, 10]) -> 105.46
#     nums_sum([1, 31, 3, 11, 0]) -> 11.62
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF

def nums_sum(my_array)
  my_array.sum{|num|  
    num.odd? ? Math.sqrt(num) : num *= num
  }.round(2)
end

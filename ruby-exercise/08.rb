# print <<EOF
#   Invert an Array
#   Create a function that takes an array of numbers arr and returns an inverted array.

#   Examples
#     invert_array([1, 2, 3, 4, 5]) -> [-1, -2, -3, -4, -5]
#     invert_array([1, -2, 3, -4, 5]) -> [-1, 2, -3, 4, -5]
#     invert_array([]) -> []
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF
  
def invert_array(arr)
  arr.map{|item| item*-1}
end

invert_array([1, 2, 3, 4, 5])
invert_array([1, -2, 3, -4, 5])
invert_array([])

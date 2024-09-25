# print <<EOF
#   Create a function that takes an array. This array will contain numbers represented as strings.

#   Your function should split this array into two new arrays. 
#   The first array should contain only even numbers. 
#   The second only odd. Then, wrap these two arrays in one main array and return it.

#   Return an empty array if there are no even numbers, or odd.

#   Examples
#     clean_up_array(["8"]) -> [[8], []]
#     clean_up_array(["11"]) -> [[], [11]]
#     clean_up_array(["7", "4", "8"]) -> [[4, 8], [7]]
#     clean_up_array(["9", "4", "5", "8"]) -> [[4, 8], [9, 5]]
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF
  
def clean_up_array(arr)
    odd_arr = []
    even_arr = []

    arr.each{|item| 
        item_to_integer = item.to_i
        item_to_integer.odd? ? odd_arr.push(item_to_integer) : even_arr.push(item_to_integer)}

    [even_arr,odd_arr]

end
clean_up_array([])
clean_up_array(["11"])
clean_up_array(["7", "4", "8"])
clean_up_array(["9", "4", "5", "8"])
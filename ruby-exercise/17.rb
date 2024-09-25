# print <<EOF
#   Create a function that takes an array of items, removes all duplicate items and returns a new array in the same sequential order as the old array (minus duplicates).

#   Examples
#     remove_dups([1, 0, 1, 0]) -> [1, 0]
#     remove_dups(["The", "big", "cat"]) -> ["The", "big", "cat"]
#     remove_dups(["John", "Taylor", "John"]) -> ["John", "Taylor"]
#   Note:
#     not use uniq 
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF
  
def remove_dups(arr)
  arr.uniq
end

remove_dups([1, 0, 1, 0])
remove_dups(["The", "big", "cat"])
remove_dups(["John", "Taylor", "John"])
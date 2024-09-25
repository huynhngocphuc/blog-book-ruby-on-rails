# print <<EOF
#   Reading about Doubleton Numbers on Wikipedia.
#   https://proofwiki.org/wiki/Definition:Doubleton

#   A natural number is a "Doubleton Number", 
#   if it contains exactly two distinct digits. 
#   For example, 23, 35, 100, 12121 are doubleton numbers.

#   Create a function which takes a number n and finds the next doubleton number.

#   Examples
#     doubleton(10) -> 12
#     # 12 has only two distinct numbers 1 and 2
#     doubleton(120) -> 121
#     # 121 has only two distinct numbers 1 and 2
#     doubleton(1234) -> 1311
#     # 1311 has only two distinct numbers 1 and 3
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF
  
def doubleton(n)
  n.is_a?(Numeric) ? 
  (n = n.next; n = n.next while n.to_s.chars.uniq.length != 2; n) 
  : 0
end

p doubleton("10")
p doubleton(12)
p doubleton(1234)
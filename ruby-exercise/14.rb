# print <<EOF
#   Create a function that takes two arguments. Both arguments are integers, a and b. 
#   Return true if one of them is 10 or if their sum is 10.

#   Examples
#     makes10(9, 10) -> true
#     makes10(9, 9) -> false
#     makes10(1, 9) -> true
#   Note:
#     Not use IF statement
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF
  
def makes10(a,b)
  a + b == 10 || a== 10 || b == 10
end

makes10(9, 10) 
makes10(9, 9) 
makes10(1, 9) 
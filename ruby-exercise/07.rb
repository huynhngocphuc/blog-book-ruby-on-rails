# print <<EOF
#    Create a function that takes a positive integer n, and returns the sum of all the cubed values from 1 to n.

#    For example, if n is 3:

#    sum_cubes(3) -> 36
#    1 ** 3 + 2 ** 3 + 3 ** 3 = 36
   
#    Examples
#       sum_cubes(7) -> 784
#       sum_cubes(8) -> 1296
#       sum_cubes(9) -> 2025
#    --------------------------------------------------------------------------------------------
#    ------------------------------------------OUTPUT--------------------------------------------
# EOF
    
def sum_cubes(n)
   sum = 0
   for i in 1..n
       sum += i**3
   end
    
   sum
 end

sum_cubes(7)
sum_cubes(8)
sum_cubes(9)

# print <<EOF
#    Create a function that returns an array of all the integers between two given numbers start and _end.

#    Examples
#       range_of_num(2, 4) -> [3]
#       range_of_num(5, 9) -> [6, 7, 8]
#       range_of_num(2, 11) -> [3, 4, 5, 6, 7, 8, 9, 10]
#    Notes
#       start will always be <= _end.
#       If start == _end, return an empty array.
#    --------------------------------------------------------------------------------------------
#    ------------------------------------------OUTPUT--------------------------------------------
# EOF
    
def range_of_num(a, b)
   #cach 1
   # a <= b ? (a.next...b).to_a : []

   #cach2
   begin
      
      a <= b ? a.next.upto(b - 1).to_a : []
      
   rescue => e
      []
   end
   
end

range_of_num(2, 4) 
range_of_num(5, 9) 
range_of_num(2, 11)
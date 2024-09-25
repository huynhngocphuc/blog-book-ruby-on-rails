#   Create a function that takes a 2D array arr returns the sum of the minimum value in each row.

#   Examples
#   sum_minimums([
#     [1, 2, 3, 4, 5],
#     [5, 6, 7, 8, 9],
#     [20, 21, 34, 56, 100]
#   ]) -> 26

#   # minimum value of the first row is 1
#   # minimum value of the second row is 5
#   # minimum value of the third row is 20
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF

# def value_min_in_array(array)

#   # array.reduce{|total arraycurent| 
#   #   total+ arraycurrent.min
#   # } 
  
# end


# def sum_minimums(array_2d)
#    array_2d.reduce{|total, array_curent| 
#     # total+ array_curent.min
#   } 
  
# end 


def sum_minimums(array_2d)
    array_2d.map.sum { |item| item.min }
  end 
  
  sum_minimums([
      [1, 2, 3, 4, 5],
      [5, 6, 7, 8, 9],
      [2, 21, 34, 56, 100]
    ])
  


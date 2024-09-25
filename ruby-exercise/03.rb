# print <<EOF
#   --------------------------------------------------------------------------------------------
#   Create a function that takes two numbers len, val_1st and an string oper as arguments.
#   initialize an array of numbers with length len, and fill values with rule:
#     case oper
#       '+': val_1st + CURRENT_INDEX
#       '-': val_1st - CURRENT_INDEX
#       '*': val_1st * CURRENT_INDEX
#       '**': val_1st ** CURRENT_INDEX
#       other: 'Invalid Operator'
#     end
#   Return this array

#   (3, 1, '+') -> [1 + 0, 1 + 1, 1 + 2] -> [1, 2, 3]
#   (3, 1, '-') -> [1 - 0, 1 - 1, 1 - 2] -> [1, 0, -1]
#   (3, 1, '*') -> [1 * 0, 1 * 1, 1 * 2] -> [0, 1, 2]
#   --------------------------------------------------------------------------------------------
#   Example
#     initialize_array(3, 2, '+') -> [2, 3, 4]
#     initialize_array(6, 5, '+') -> [5, 6, 7, 8, 9, 10] 
#     initialize_array(6, 5, '*') -> [0, 5, 10, 15, 20, 25]
#     initialize_array(6, 5, '-') -> [5, 4, 3, 2, 1, 0]
#     initialize_array(6, 5, '/') -> 'Invalid Operator'
#     initialize_array(4, 2, '**') -> [1, 2, 4, 8]
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF

def initialize_array(len, val_1st, oper)
  result = []
  for i in (0...len)
    case oper
    when '+'
      result[i] = val_1st + i
    when '-'
      result[i] = val_1st - i
    when '*'
      result[i] = val_1st * i
    when '**'
      result[i] = val_1st**i
    else
      return 'Invalid Operator'
    end
  end
  result
end

initialize_array(3, 2, '+')
initialize_array(6, 5, '+')
initialize_array(6, 5, '*')
initialize_array(6, 5, '-')
initialize_array(6, 5, '/')
initialize_array(4, 2, '**')
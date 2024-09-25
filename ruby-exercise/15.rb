# print <<EOF
#   Create a function which takes an array arr and moves all zeros to the end, 
#   preserving the order of the other elements.

#   Examples
#   move_zeros([1, 0, 1, 2, 0, 1, 3]) ➞ [1, 1, 2, 1, 3, 0, 0]
#   move_zeros([0, 1, nil, 2, false, 1, 0]) ➞ [1, nil, 2, false, 1, 0, 0]
#   move_zeros(['a', 0, 0, 'b', 'c', 'd', 0, 1, 0, 1, 0, 3, 0, 1, 9, 0, 0, 0, 0, 9]) ➞ ['a', 'b', 'c', 'd', 1, 1, 3, 1, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF

def move_zeros(a)
    new_arr = Array.new(a.length,0)
    index_new_arr = 0
    a.each do |item|
        if item != 0 
            new_arr[index_new_arr] = item
            index_new_arr += 1
        end
    end
    new_arr
end

move_zeros([1, 0, 1, 2, 0, 1, 3])
move_zeros([0, 1, nil, 2, false, 1, 0])
move_zeros(['a', 0, 0, 'b', 'c', 'd', 0, 1, 0, 1, 0, 3, 0, 1, 9, 0, 0, 0, 0, 9])

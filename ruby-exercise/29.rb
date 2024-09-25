# print <<EOF
#   Tính tổng của các phần tử là số và chữ số trong 1 array, với array là parameter truyền vào function
#   Ví dụ:
#     sum_numeric() -> 0
#     sum_numeric([1,4,5,7.0, 'a', '5', true, nil]) -> 22.0
#     sum_numeric([7.0, 'a', '5', true, nil]) -> 12.0
#     sum_numeric([1,4,5,0, 'a', '5', true, nil]) -> 15
#     sum_numeric([1,4,5,0, 'a', '5.0', true, nil]) -> 15.0
# EOF

def sum_numeric(arr = [])
    pattern_regex_integer = /\A[-+]?\d+\z/
    pattern_regex_float = /\A[-+]?\d+(\.\d+)?\z/
    arr_sum = []
    arr.each{|item|    
        if item.to_s.match?(pattern_regex_integer)
            arr_sum.push(item.to_i) 
        elsif  item.to_s.match?(pattern_regex_float)
            arr_sum.push(item.to_f)
        end
    }
    arr_sum.sum
end

sum_numeric()
sum_numeric([1,4,5,7.0, 'a', '5', true, nil])
sum_numeric([7.0, 'a', '5', true, nil])
sum_numeric([1,4,5,0, 'a', '5', true, nil]) 
sum_numeric([1,4,5,0, 'a', '5.0', true, nil]) 
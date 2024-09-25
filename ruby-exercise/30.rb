# print <<EOF
# [1, 3, 5.0, '5.0', 'a', '6t', true, false, nil] muốn tính tổng của nó theo các yêu cầu sau:


	
# 	không dùng sum, sum block
# 	khi số, hay chữ số là số thực thì kết quả là số thực
# 	khi số, chữ số là số nguyên thì kết quả là số nguyên
# 	không được dùng reduce với block
# 	không dùng each để tính tổng
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF

def RecursiveSum(arr_sum)
    return 0 if arr_sum.empty?
    sum = arr_sum.pop
    return sum + RecursiveSum(arr_sum)
end

# không dùng each để tính tổng, dùng each để kiểm tra số :v
def isStringNumber(arr = [])
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
    RecursiveSum(arr_sum)
end

isStringNumber()
isStringNumber([1,4,5,7.0, 'a', '5', true, nil])
isStringNumber([7.0, 'a', '5', true, nil])
isStringNumber([1,4,5,0, 'a', '5', true, nil]) 
isStringNumber([1, 3, 5.0, '5.0', 'a', '6t', true, false, nil]) 
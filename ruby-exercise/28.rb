# print <<EOF
#   Tính tổng của các phần tử là số nguyên và số thực trong 1 array, với array là parameter truyền vào function
#   Ví dụ:
#     sum_int_float() -> 0
#     sum_int_float([1,4,5,7.0, 'a', '5', true, nil]) -> 17.0
#     sum_int_float([7.0, 'a', '5', true, nil]) -> 7.0
#     sum_int_float([1,4,5,0, 'a', '5', true, nil]) -> 10
# EOF

def sum_int_float(arr = [])
    arr.map.sum{|item| 
        item = 0 if(!item.is_a?(Integer) && !item.is_a?(Float))
        item
     }
end

p sum_int_float()
p sum_int_float([1,4,5,7.0, 'a', '5', true, nil])
p sum_int_float([7.0, 'a', '5', true, nil])
p sum_int_float([1,4,5,0, 'a', '5', true, nil]) 
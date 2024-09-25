# print <<EOF
#   Tính tổng của các phần tử là số nguyên trong 1 array, với array là parameter truyền vào function
#   Ví dụ:
#     sum_int() -> 0
#     sum_int([1,4,5,7.0, 'a', '5', true, nil]) -> 10
#     sum_int([7.0, 'a', '5', true, nil]) -> 0
# EOF

def sum_int(arr = [])
    arr.map.sum{|item| 
       item = 0 if(!item.is_a?(Integer))
       item
    }
end

sum_int()
sum_int([1,4,5,7.0, 'a', '5', true, nil])
sum_int([7.0, 'a', '5', true, nil])
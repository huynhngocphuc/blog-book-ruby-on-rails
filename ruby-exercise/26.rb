# print <<EOF
#   Input sẽ là 1 array data thông tin như sau:
#     [
#       ['fname', 'lname', 'sex', 'role', 'department'],
#       ['nguyen van', 'a', true, 'qc', 'z13'], 
#       ['truong minh', 'c', true, 'dev', 'akat'],     
#       ['nguyen van', 'g', true, 'qc', 'emu'],
#       .....
#     ]
#   Trong đó,
#     - phần tử đầu tiên sẽ header
#     - các phần tử tiếp theo lần lượt là data cho từng header
#     ví dụ: 
#       'nguyen van', 'truong minh', 'nguyen van' sẽ là data cho header 'fname'
#       'a', 'c', 'g' sẽ là data cho header 'lname'
#       ....
#   Yêu cầu: chuyển đổi thông tin trên về 1 hash có cấu trúc như sau:
#     [
#       {
#         fname: 'nguyen van', lname: 'a', sex: true, role: 'qc', department: 'z13'
#       },
#       {
#         fname: 'truong minh', lname: 'c', sex: true, role: 'dev', department: 'akat'
#       },
#       {
#         fname: 'nguyen van', lname: 'g', sex: true, role: 'qc', department: 'emu'
#       },
#       .....
#     ]
#   Chú ý: 
#     - không dùng transpose, transform_keys
#     - input có thể là 1 mảng rỗng (default)
#     - dùng each_slice
#     - chú ý: kết quả [], [{}] thì phải trả về nil

#   Examples:
#   info_use_each_slice() -> nil
#   info_use_each_slice([['fname', 'lname'], ['a', 'b'], ['c', 'd']]) -> [{:fname=>"a", :lname=>"b"}, {:fname=>"c", :lname=>"d"}]
# EOF

def info_use_each_slice(data = [])
    return nil if(data.empty? || (data.length == 1 && data[0].empty?))
    
    headers = data.shift
    result = []
    data.each_slice(1) { |item|
        values = item.flatten
        result.push(headers.each_with_index.with_object({}) { |(header, index), hash| hash[header.to_sym] = values[index] })
    } 
    result
end

info_use_each_slice([['fname', 'lname', 'sex', 'role', 'department'],
    ['nguyen van', 'a', true, 'qc', 'z13'], 
    ['truong minh', 'c', true, 'dev', 'akat'],     
    ['nguyen van', 'g', true, 'qc', 'emu']])

info_use_each_slice([['fname', 'lname'], ['a', 'b'], ['c', 'd']])
info_use_each_slice()
info_use_each_slice([])
info_use_each_slice([{}])
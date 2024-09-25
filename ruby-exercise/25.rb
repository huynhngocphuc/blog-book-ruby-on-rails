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
#     - không dùng each_slice, transpose
#     - input có thể là 1 mảng rỗng (default)
#     - dùng transform_keys và zip
#     - chú ý: kết quả [], [{}] thì phải trả về nil

#   Examples:
#   info_use_transform() -> nil
#   info_use_transform([['fname', 'lname'], ['a', 'b'], ['c', 'd']]) -> [{:fname=>"a", :lname=>"b"}, {:fname=>"c", :lname=>"d"}]
# EOF

def info_use_transform(data = [])
    return nil if(data.empty? || (data.length == 1 && data[0].empty?))
    
    header = data.shift
    result = []
    data.each{|item| result.push(header.zip(item).to_h.transform_keys!(&:to_sym))}
    result
end

info_use_transform([['fname', 'lname', 'sex', 'role', 'department'],
    ['nguyen van', 'a', true, 'qc', 'z13'], 
    ['truong minh', 'c', true, 'dev', 'akat'],     
    ['nguyen van', 'g', true, 'qc', 'emu']])

info_use_transform([['fname', 'lname'], ['a', 'b'], ['c', 'd']])
info_use_transform()
info_use_transform([])
info_use_transform([{}])
# print <<EOF
#   Input sẽ là 1 array data thông tin như sau:
    # [
    #   ['fname', 'lname', 'sex', 'role', 'department'],
    #   ['nguyen van', 'a', true, 'qc', 'z13'], 
    #   ['truong minh', 'c', true, 'dev', 'akat'],     
    #   ['nguyen van', 'g', true, 'qc', 'emu'],
    #   .....
    # ]
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
#     - không dùng zip, each_slice
#     - input có thể là 1 mảng rỗng (default)
#     - dùng transpose
#     - chú ý: kết quả [], [{}] thì phải trả về nil

#   Examples:
#     info_use_transpose() -> nil
#     info_use_transpose([['fname', 'lname'], ['a', 'b'], ['c', 'd']]) -> [{:fname=>"a", :lname=>"b"}, {:fname=>"c", :lname=>"d"}]
# EOF

def info_use_transpose(data = [])
    # phuong thuc empty kiểm tra mảng có rỗng hay không, theo length của mảng .
    return nil if(data.empty? || (data.length == 1 && data[0].empty?))

    header = data.shift
    result = []
    for i in 0...data.length
        result.push([header,data[i]].transpose.to_h.transform_keys!(&:to_sym)  )
    end
    result

end


info_use_transpose([['fname', 'lname', 'sex', 'role', 'department'],
    ['nguyen van', 'a', true, 'qc', 'z13'], 
    ['truong minh', 'c', true, 'dev', 'akat'],     
    ['nguyen van', 'g', true, 'qc', 'emu']])

info_use_transpose([['fname', 'lname'], ['a', 'b'], ['c', 'd']])
info_use_transpose()
info_use_transpose([])
info_use_transpose([{}])
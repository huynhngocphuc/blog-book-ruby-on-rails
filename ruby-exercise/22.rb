# print <<EOF
#   Vẽ 1 hình tam giác cân với chiều cao h
#   Ví dụ: 
# h = 5
#     *
#    ***
#   *****
#  *******
# *********
# h = 3
#   *
#  ***
# *****
# Examples
#   triangle(1) -> ["*"]
#   triangle(0) -> []
#   triangle(2) -> [" *", "***"]
# EOF

def triangle(h=3)
    triangle_arr = []
    for i in 0...h
        tmp_h = h - i
        triangle_arr.push((" "*i) + "*"*tmp_h + "*"*(tmp_h-1))
    end
    triangle_arr.reverse
end

triangle(1)
triangle(0)
triangle(2)
triangle(3)

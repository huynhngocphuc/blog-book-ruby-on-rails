# print <<EOF
#   Vẽ 1 hình lá cờ với chiều cao h, trong đó:
#   - phần lá cờ có chiều cao h
#   - phần cột cờ có chiều cao h
#   - độ rộng lá cờ là 3h
#   Ví dụ: 
# h = 3
# *********
# *********
# *********
# **
# **
# **
#   Examples:
#     draw_flag() -> ["*********", "*********", "*********", "**", "**", "**"]
#     draw_flag(0) -> []
# EOF

def draw_flag(h=3)
     flag = []
     for i in 1..h
        flag.push("*"*3*h)
     end

     for i in 1..h
        flag.push("*"*2)
     end
     flag
end
draw_flag()
draw_flag(0)
# print <<EOF
#   Write a function that changes every letter to the next letter:
#   "a" becomes "b"
#   "b" becomes "c"
#   "d" becomes "e"
#   and so on ...
#   Examples
#     move("hello") -> "ifmmp"
#     move("bye") -> "czf"
#     move("welcome") -> "xfmdpnf"
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF
  
def move(word)
  begin
    word.chars.map(&:next).join
  rescue =>e
    0
  end
end

p move("hello")
p move("bye")
p move("welcome")
# print <<EOF
#   Count uppercase letters, lowercase letters, numbers and special characters in a given string.

#   Create a function which takes a string txt and returns a list of numbers with 
#     count of uppercase letters, lowercase letters, numbers and special characters.

#   Examples
#     filter_string("*$(#Mu12bas43hiR%@*!") -> [2, 6, 4, 8]
#     # 2 uppercase letters
#     # 6 lowercase letters
#     # 4 numbers
#     # 8 special characters

#     filter_string("^^Edabit^^%$#12379") -> [1, 5, 5, 7]
#     filter_string("**Airforce1**") -> [1, 7, 1, 4]
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF

# ord trả về integer của ký tư
def filter_string(txt)
  begin
    
    arr_count = Array.new(4){0}
    digits_num = txt.chars.map{|item| item.ord}
    digits_num.each{|char| 
      case char 
      when 65..90
        arr_count[0]+=1
      when 97..122
        arr_count[1]+=1
      when 48..57
        arr_count[2]+=1
      else
        arr_count[3]+=1
      end
      }
    arr_count

  rescue => e
    0
  end
end

p filter_string("*$(#Mu12bas43hiR%@*!")
p filter_string("^^Edabit^^%$#12379")
p filter_string(1232)
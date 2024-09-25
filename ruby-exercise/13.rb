# print <<EOF
# 	Create a function that takes a number and returns the maximum value by rearranging its digits.

# 	Examples
# 		rotate_max_number(123) -> 321
# 		rotate_max_number("001") -> 100
# 		rotate_max_number(999) -> 999
# 	--------------------------------------------------------------------------------------------
# 	------------------------------------------OUTPUT--------------------------------------------
# EOF
	
def rotate_max_number(num)
	begin
		digits_num = num.to_s.chars.map{|item| Integer(item)}
		digits_num.sort.reverse.join.to_i	
	rescue => e
		-1
	end
end

rotate_max_number("ftown 3")
rotate_max_number("001")
rotate_max_number(999)




# print <<EOF
# 	Write a function that takes an integer minutes and converts it to seconds.

# 	Examples
# 	convert(5) -> 300
# 	convert(3) -> 180
# 	convert(2) -> 120
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF

def convert(minutes)
	minutes.to_i*60
end

convert('30')
convert(3)
convert(2)
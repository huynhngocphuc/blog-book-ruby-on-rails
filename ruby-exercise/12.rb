# print <<EOF
# 	Create a function that takes a string txt and a number n and returns the repeated string n number of times.

# 	If given argument txt is not a string, return Not A String !!

# 	Examples
# 		repeat_string("Software", 2) -> "SoftwareSoftware"
# 		repeat_string("Ah", 3) -> "AhAhAh"
# 		repeat_string(1990, 7) -> "Not A String !!"
# 	--------------------------------------------------------------------------------------------
# 	------------------------------------------OUTPUT--------------------------------------------
# EOF
	
def repeat_string(t,n)
	t.instance_of?(String) ? t * n : "Not A String !!"
end

repeat_string("Software", 2)
repeat_string("Ah", 3)
repeat_string(1990, 7)



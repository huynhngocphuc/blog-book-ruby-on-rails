# print <<EOF
#   Given a one word lowercase string txt, 
#   return another string such that even-indexed and odd-indexed characters are grouped 
#   and groups are space-separated.

#   Examples
#     even_odd_string("software") -> "sfwr otae"
#     # Letters at even indexes = "sfwr"
#     # Letters at odd indexes = "otae"
#     # Join both strings with a space

#     even_odd_string("edabit") -> "eai dbt"
#     even_odd_string("airforce") -> "aroc ifre"
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF


def even_odd_string(txt)
  even_string = ''
  odd_string = ''
  
  txt.each_char.with_index { |char, index|

    index.odd? ? odd_string = odd_string + char : even_string = even_string + char  
  }

  even_string.concat(" ",odd_string)
end

even_odd_string("edabit")
even_odd_string("airforce")

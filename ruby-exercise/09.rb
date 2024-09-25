# print <<EOF
#   Given an n-sided regular polygon n, return the total sum of internal angles (in degrees).

#   Examples
#     sum_polygon(3) -> 180
#     sum_polygon(4) -> 360
#     sum_polygon(6) -> 720

#   Notes
#     n will always be greater than 2.
#     The formula (n - 2) x 180 gives the sum of all the measures of the angles of an n-sided polygon.
#     https://en.wikipedia.org/wiki/Regular_polygon
#   --------------------------------------------------------------------------------------------
#   ------------------------------------------OUTPUT--------------------------------------------
# EOF
  
def sum_polygon(n)
  n > 2 ? (n - 2) * 180 : 0
end

sum_polygon(3)
sum_polygon(4)
sum_polygon(6)
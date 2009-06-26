# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  valid_sides = true
  
  # check sides are positive
  [a, b, c].each do |side|
    if side <= 0
      valid_sides = false
    end
  end
  
  # check ratio between sides
  ordered_sides = [a, b, c].sort
  valid_sides = (ordered_sides[0] + ordered_sides[1]) > ordered_sides[2]
  
  raise TriangleError unless valid_sides
  
  if (a == b) and (b == c)
    :equilateral
  elsif (a == b) or (b == c) or (a == c)
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

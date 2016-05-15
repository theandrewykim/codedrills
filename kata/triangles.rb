# return 0 if three sides do not make a triangle. Return 1 for an acute triangle, 2 for a right triangle and 3 for an obtuse triangle


def triangle_type (a, b, c)
  sides = [a, b, c].sort
  a = sides[0]
  b = sides[1]
  c = sides[2]
  if a + b <= c
    0
  elsif a**2 + b**2 == c**2
    2
  elsif a**2 + b**2 >= c**2
    1
  else
    3
  end
end
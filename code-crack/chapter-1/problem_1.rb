
# Implement an algorithm to detremine if a string has all unique characters. What if you could not use other data structures?

#Category
# Iterate through string and compare first element to every elemet of string
# Second element compared to elements 3 to last
# Repeat.


def unique(string)
  n = 1
  i = string.length-1
  i.times do
    if string[0] == string[n]
      return false
    else
      n += 1
    end
  end
  if i > 1
    unique(string[1..-1])
  else
    return true
  end
end


print unique("meowcenary")
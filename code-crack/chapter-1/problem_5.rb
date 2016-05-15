# Write an algorithm that replaces all spaces in a string with "%20"

def replace(string)
  n = string.length
  i = 0
  n.times do
    string[i] = "%20" if string[i] == " "
    n = string.length
    i += 1
  end
  return string
end



print replace("   ")

# Write an algorithm to determine if two strings are anagrams

def anagrams?(string1, string2)
   string1.split("").sort == string2.split("").sort
end

print anagrams?("workteam","teamwork")
def is_palindrome?(number)
   number.to_s.reverse == number.to_s
end


def largest_pair
  palindrome = 0
  array = []
  (100..999).each do |number|
    (100..999).each do |pair|
     product = number * pair
     array << product if is_palindrome?(product)
    end
  end
  return array.max
end

print largest_pair
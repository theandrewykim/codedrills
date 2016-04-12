def is_prime?(number)
  (2..number-1).none? {|check| number % check == 0}
end


def find_prime(number)
  array = []
  prime_array = []
  (2..Math.sqrt(number).to_i).each do |factor|
      array << factor if number % factor  == 0
  end
  array.each do |check|
    prime_array << check if is_prime?(check)
  end
  prime_array[-1]
end


print find_prime(600851475143)



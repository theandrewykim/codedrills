
# If divisible by 20, it is divisible by 10,5,4,2,1
# Divisible by 19
#If divisible by 18, it is divisible by 9,6,3
# Divisible by 17
# If divisible by 16, it is divisible by 8
# Divisible by 15
# If divisible by 14, divisible by 7
# Divisible by 13
# Divisible by 12
# Divisible by 11
# primes are 2 3 5 7 11 13 17 19
# left are 4 6 8 12 13 14 16 18 20
# Might be better to find all the factors for each number and compare the amount of times they show up


def gcf(number1, number2)
  if is_prime?(number1) || is_prime?(number2)
    return 1
  elsif
end


def is_prime?(number)
  (2..number-1).none? {|check| number % check == 0}
end


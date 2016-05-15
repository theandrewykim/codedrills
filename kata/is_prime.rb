# Test if number is prime
def isPrime(num)
  if num < 2
    return false
  else
    (2..num-1).none? {|check| num % check == 0}
  end
end
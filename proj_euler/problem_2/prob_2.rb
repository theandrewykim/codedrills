def fibonacci(number)
  fib_array = [0]
    current_number = 1
  until current_number >= number
    fib_array.push(current_number)
    current_number = fib_array[-1] + fib_array[-2]
  end
  return fib_array
end

def even_sum(array)
  evens = []
  array.each {|number| evens << number if number % 2 == 0 }
  evens.reduce(0) {|sum,x| sum + x }
end


print even_sum(fibonacci(4000000))


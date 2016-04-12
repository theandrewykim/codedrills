def multiple_sum(number)
  limit = number
  n = 0
  mult_array = []
  until n >= 1000
    if n % 3 == 0 || n % 5 == 0
      mult_array << n
    end
    n += 1
  end
  mult_array.reduce(0) {|sum,x| sum + x}
end


print multiple_sum(1000)


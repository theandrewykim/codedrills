def tribonacci(signature,n)
  if signature.length != 3
    return []
  elsif n < 1
    return []
  else
    sequence = signature
    until sequence[0..n-1].length == n
      total = 0
      signature.each {|number| total += number}
      sequence << total
      signature = [sequence[-3], sequence[-2], sequence[-1]]
    end
    return sequence[0..n-1]
  end
end

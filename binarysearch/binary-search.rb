 def makearray(number=10000)
  array = []
  count = 1
  number.times do
    array << count
    count += 1
  end
  return array
end



def linearsearch(array, number)
  beginning_time = Time.now
  i = 0
  while i < array.length
    if array[i] == number
    puts array[i]
    end_time = Time.now
    puts end_time - beginning_time
    end
  i += 1
  end
  nil
end

def binarysearch(array, number)
  beginning_time = Time.now
  mid = array[array.length/2]
  if mid > number
    newarray = array[0..array.length/2]
    newarray
    binarysearch(newarray, number)
  elsif mid < number
    newarray= array[array.length/2+1..array.last]
    binarysearch(newarray, number)
  else
   end_time = Time.now
   puts end_time-beginning_time
   puts mid
  end
end


linearsearch(makearray, 5045)
binarysearch(makearray, 5045)
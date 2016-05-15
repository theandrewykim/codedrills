# Remove smallest number in an array without shifting array.
# Don't use enumerables!
def remove_smallest(numbers)
  idx = 1
  smallest_idx = 0
  length = numbers.length - 1
  length.times do
    if numbers[smallest_idx] >  numbers[idx]
     smallest_idx = idx
    end
    idx += 1
  end
  numbers.delete_at(smallest_idx)
  numbers
end

require_relative 'linked-lists'

# Write a method that removes duplicate entries from a singly linked lists
# Create a hash that tracks frequency of elements and iterate through linked list to remove the duplicate elements, as many times as it appears in the list.
# NOTE: None of these methods run individually. They are CLASS methods found in the linked file-
# Working solution added to linked_lists.rb

def remove_dups
  current = @head
  value_counts = Hash.new
  while current != nil
    if !value_counts.key?(current.value)
      value_counts[current.value] = 1
    else
      value_counts[current.value] += 1
    end
    current = current.next_node
  end
  value_counts.each do |value, frequency|
    if frequency > 1
      frequency.times do
        remove(value)
      end
    end
  end

end

# To remove data values without using a temporary structure, I must iterate twice in order to find copies to remove each value.
def remove_dups_no_hash
  benchmark = @head
  current = @head
  remove_count = 0
  while benchmark != nil
    while current != nil
      if benchmark.value == current.value
       remove_count += 1
      end
      current = current.next_node
      remove_count.times do {remove(benchmark.value)}
      remove_count = 0
    end
    benchmark = benchmark.next_node
  end
end

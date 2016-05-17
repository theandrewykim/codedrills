require_relative 'linked-lists'

# Write a method that removes duplicate entries from a singly linked lists
# Create a hash that tracks frequency of elements and iterate through linked list to remove the duplicate elements, as many times as it appears in the list.

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

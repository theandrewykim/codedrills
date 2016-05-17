# Implement an algorithm to find the nth to last element of a singly linked list

#
def nth_to_last(n)
  iterations = length - n
  current = @head
  iterations.times do
    current = current.next_node
  end
  current.value

end
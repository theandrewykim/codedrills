require 'pry'
class Node
  attr_accessor :next_node, :value

  def initialize(value, next_node=nil)
    @next_node = next_node
    @value = value
  end
end

class LinkedList

  def initialize(value)
    @head = Node.new(value)
  end

  def display
    current_node = @head
    list_array = []
    while current_node.next_node != nil
     list_array << current_node.value.to_s + " -> "
     current_node = current_node.next_node
   end
   list_array << current_node.value.to_s
   print list_array.join("")
 end

 def add(value)
  current_node = @head
  while current_node.next_node != nil
    current_node = current_node.next_node
  end
  current_node.next_node = Node.new(value)
end

  def remove(value)
    if @head.value == value
      @head = @head.next_node
    else
      current_node = @head
      while current_node.next_node != nil  && current_node.next_node.value != value
        current_node = current_node.next_node
      end
      if current_node.next_node == nil
        print "Value was not found"
      else
        current_node.next_node = (current_node.next_node).next_node
      end
    end
  end

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

  def length
  current_node = @head
  array = []
  while current_node.next_node != nil
    array << current_node.value
    current_node = current_node.next_node
  end
  array << current_node.value
  array.length

  end

  def remove_dups_no_hash
    benchmark = @head
    current = benchmark.next_node
    remove_count = 1
    changes = length - 2
    changes.times do
      while current != nil
        if benchmark.value == current.value
          remove_count += 1
       end
      current = current.next_node
      end
      if remove_count > 1
        remove_count.times do
          remove(benchmark.value)
        end
      end
      remove_count = 0
      benchmark = benchmark.next_node
      current = benchmark.next_node
     end

   end


   def nth_to_last(n)
    iterations = length - n
    current = @head
    iterations.times do
      current = current.next_node
    end
    current.value

  end

end

list = LinkedList.new(5)
list.add(6)
list.add(11)
list.add(9)
list.add(11)
puts list.display
list.add(11)
puts list.display
list.remove_dups_no_hash
puts list.display
print list.nth_to_last(2)

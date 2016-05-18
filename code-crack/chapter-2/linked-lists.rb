require 'pry'
class Node
  attr_accessor :next_node, :value

  def initialize(value, next_node=nil)
    @next_node = next_node
    @value = value
  end
end

class LinkedList
  attr_accessor :head

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

   def add_lists(list1, list2)
    list1current = list1.head
    list2current = list2.head
    carries = 0
    sum = nil
    while list1current != nil && list2current != nil
      if list1current.value+ list2current.value + carries < 10
        digit_sum = list1current.value + list2current.value + carries
        carries = 0
      else
        digit_sum = (list1current.value + list2current.value) % 10 + carries
        carries = 1
      end
      if sum == nil
        sum = LinkedList.new(digit_sum)
      else
        sum.add(digit_sum)
        if carries == 1 && list1current.next_node == nil
          sum.add(1)
        end
      end
      list1current = list1current.next_node
      list2current = list2current.next_node
    end
    sum.display
    end


end

# list = LinkedList.new(5)
# list.add(6)
# list.add(11)
# list.add(9)
# list.add(11)
# puts list.display
# list.add(11)
# puts list.display

fiveonethreesix = LinkedList.new(6)
fiveonethreesix.add(3)
fiveonethreesix.add(1)
fiveonethreesix.add(5)

twoninefivefour = LinkedList.new(4)
twoninefivefour.add(5)
twoninefivefour.add(9)

fiveonethreesix.add_lists(fiveonethreesix, twoninefivefour)

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

  def display_list
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
      puts "here"
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

end

list = LinkedList.new(5)
list.add(7)
list.add(9)
list.add(11)
list.display_list
list.remove(5)
list.display_list
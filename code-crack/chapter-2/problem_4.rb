require_relative 'linked_list'



# Want to add each list node by node
# Needs to be refactored and altered in order to address numbers with different numbers of digits.
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
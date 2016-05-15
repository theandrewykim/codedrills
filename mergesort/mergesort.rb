
# Merge sort means that we are breaking down our collection into smallest, sortable groups and recursively comparing two sorted arrays with each other.
# This would mean writing a method that compares two arrays and combines them into one array first.
# Mergesort function would recursively break down an initial array.
# When comparing two arrays, would make a third, compare the first elements of the paired arrays, and push the smaller element to the third and continue to do so until one of the arrays is empty and push the remaining elements into the third array.
require 'pry'

def merge_arrays(array1,array2)
  merged_array = []
  until array1.length == 0 || array2.length == 0
    if array1[0] <= array2[0]
      merged_array << array1[0]
      array1.shift
    else
      merged_array << array2[0]
      array2.shift
    end
  end
    if array1.empty? && !array2.empty?
      merged_array << array2[0]
    elsif array2.empty? && !array1.empty?
      merged_array << array1[0]
    end
    return merged_array
  end



# Recursively splitting array to join.
# Idea is that the arrays are sorted in smallest forms so to combine we just compare between two arrays.
# Start at mid point. Split each midpoint array in two, over and over
# Base case needs to be the two arrays are sorted arrays.(Sorted when one element)

def merge_sort(array)
    mid = array.length/2
    array.each do |x|
      n = 0
      if array[n] <= array[n+1]
       n += 1
    end
    if n == array.length - 2
    array1 = merge_sort(array[0..mid])
    array2 = merge_sort(array[mid+1..-1])
  end
end






array1 = [1,5,3,7,9]

print merge_sort(array1)


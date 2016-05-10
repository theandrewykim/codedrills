
# Merge sort means that we are breaking down our collection into smallest, sortable groups and recursively comparing two sorted arrays with each other.
# This would mean writing a method that compares two arrays and combines them into one array first.
# Mergesort function would recursively break down an initial array.
# When comparing two arrays, would make a third, compare the first elements of the paired arrays, and push the smaller element to the third and continue to do so until one of the arrays is empty and push the remaining elements into the third array.


def combine_two_arrays(array1,array2)
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
    if array1.empty?
      merged_array << array2[0]
    elsif array2.empty?
      merged_array << array1[0]
    end
    return merged_array
  end




def mergesort(array)
array1 = []
array2 = []
end

array1 = [1,3,5,7,9]
array2 = [2,4,6,8]
print combine_two_arrays(array1,array2)


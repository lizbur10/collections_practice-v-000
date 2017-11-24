require 'pry'
def lizs_sort_array(sort_array, order)
  sorted = false
  sort_array.each_with_index.map do | a, index |
    while sorted == false
    if index < unsorted_array.length - 1
      sorted = true
      if unsorted_array[index + 1] < a
        if switch?(a, sort_array[index + 1], order)
          sorted=false
          unsorted_array[i], unsorted_array[i + 1] = unsorted_array[i + 1], unsorted_array[i]
        end
      end
    end
  end
end

def switch?(a,b,order)
  (order == "asc" && a > b) || (order == "desc" && a < b)
end

 def sort_array_asc(unsorted_array)
   unsorted_array.sort { | a, b | a <=> b  }
 end

def sort_array_desc(unsorted_array)
  unsorted_array.sort { | b, a | a <=> b  }
end

sort_array_asc([17, 3, 12, 1, 2])

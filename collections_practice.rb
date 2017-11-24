require 'pry'
def sort_array_asc(unsorted_array)
#   unsorted_array.sort { | a, b | a <=> b  }
  sorted_array = []
  unsorted_array.each_with_index.map do | a, index |
    temp_array = []
    if index < unsorted_array.length - 1

      if unsorted_array[index + 1] < a
        temp_array << unsorted_array[index + 1]
        temp_array << a
      else
        temp_array << a
        temp_array << unsorted_array[index + 1]
        #binding.pry
      end
    end
    sorted_array << temp_array[0]
    sorted_array << temp_array[1]

  end
 end

#binding.pry
 # def sort_array_desc(unsorted_array)
 #   unsorted_array.sort { | b, a | a <=> b  }
 # end

# sort_array_asc([17, 3, 12, 1, 2])

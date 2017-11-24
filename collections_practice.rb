require 'pry'
def lizs_sort_array(sort_array, order="asc")
  sorted = false
  while sorted == false
    sorted = true
    sort_array.each_with_index.map do | a, index |
      if index < sort_array.length - 1
        if switch?(a, sort_array[index + 1], order)
          puts "Yes make the switch"
          sorted = false
          sort_array[index], sort_array[index + 1] = sort_array[index + 1], sort_array[index]
        end
      end
    end
  end
  sort_array
end

def switch?(a,b,order)
  (order == "asc" && a > b) || (order == "desc" && a < b)
end

lizs_sort_array([17, 3, 12, 1, 2])

 def sort_array_asc(_array)
   sort_array.sort { | a, b | a <=> b  }
 end

def sort_array_desc(sort_array)
  sort_array.sort { | b, a | a <=> b  }
end

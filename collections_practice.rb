require 'pry'
def lizs_sort_array(sort_array, order="asc")
  sorted = false
  while sorted == false
    sorted = true
    sort_array.each_with_index.map do | a, index |
      if index < sort_array.length - 1
        if switch?(a, sort_array[index + 1], order)
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

 def sort_array_asc(sort_array)
#   sort_array.sort { | a, b | a <=> b  }
  lizs_sort_array(sort_array)
 end

def sort_array_desc(sort_array)
#  sort_array.sort { | b, a | a <=> b  }
  lizs_sort_array(sort_array,"desc")
end

def sort_array_char_count(sort_array)
  sort_array.sort { | a, b | a.length <=> b.length }
end

def swap_elements(input_array)
  input_array[1], input_array[2] = input_array[2], input_array[1]
  input_array
end

def swap_elements_from_to(input_array,index,destination_index)
  input_array[index], input_array[destination_index] = input_array[destination_index], input_array[index]
  input_array
end

def reverse_array(input_array)
#  input_array.reverse  ## Using Ruby reverse method
  i = input_array.length
  j = 0
  output_array = []
  while i > 0
    output_array[j] = input_array[i - 1]
    i -= 1
    j += 1
  end
  output_array
end

def kesha_maker(input_array)
  input_array.map { | element | element[2] = "$" }
  input_array
end

def find_a(input_array)
  input_array.select { | element | element.start_with?("a") }
end

def sum_array(input_array)
  input_array.inject(0) { | result, element | result + element }
end

def add_s(input_array)
  input_array.each_with_index { | element, index| index != 1 ? element << "s" : element }
end

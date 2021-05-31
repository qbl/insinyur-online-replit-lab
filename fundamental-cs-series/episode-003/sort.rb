def sort(input_array)
  i = 0
  unsorted_index = input_array.size-1
  
  while i < unsorted_index do
    if input_array[i] > input_array[i+1]
      input_array[i], input_array[i+1] = input_array[i+1], input_array[i] 
    end

    i += 1
  end

  return input_array
end
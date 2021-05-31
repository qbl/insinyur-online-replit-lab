def sort(input_array)
  i = 0
  while i < (input_array.size-1) do
    if input_array[i] > input_array[i+1]
      input_array[i], input_array[i+1] = input_array[i+1], input_array[i] 
    end

    i += 1
  end

  return input_array
end
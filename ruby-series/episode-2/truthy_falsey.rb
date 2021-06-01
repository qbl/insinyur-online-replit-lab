[true, false, Object, 0, 1, nil, "", [1, 2, 3], {}].each do |value|
  if value
    puts "#{value.inspect} is truthy"
  else
    puts "#{value.inspect} is falsey"
  end
end
def load_user
  puts "executing load_user"
  
  return "User 1"
end

puts "This will execute load_user"
current_user ||= load_user
# ^ shorthand for current_user = current_user || load_user
# since current_user is never declared before, 
# the value of current_user in right hand side is nil
puts "Current user is: #{current_user}"

puts "================================"

puts "This will not execute load_user"
current_user ||= load_user
# ^ shorthand for current_user = current_user || load_user
# since current_user is not nil, load user is not executed
# as it's sufficient to determine that
# "current_user || load_user" is true
puts "Current user is: #{current_user}"
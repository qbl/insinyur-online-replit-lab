require 'date'

if Date.new(2020).leap?
  puts "2020 is a leap year"
end

if Date.today.leap?
  puts "This year is a leap year"
else
  puts "This year is a common year"
end

if Date.today.sunday?
  puts "Sunday, bloody Sunday"
elsif Date.today.saturday?
  puts "I can't believe the news today"
else
  puts "I can't close my eyes and make it go away"
end

unless Date.today.friday?
  puts "Last Friday night, yeah, we danced on tabletops"
end

unless Date.today.friday?
  puts "Last Friday night, yeah, we danced on tabletops"
else
  puts "This Friday night, do it all again"
end

today = Date.today.strftime("%A")
case today
when "Monday"
  puts "Blue"
when "Tuesday"
  puts "Grey"
when "Wednesday"
  puts "Too"
when "Thursday"
  puts "I don't care about you"
when "Friday"
  puts "I'm in love"
else
  puts "Saturday, wait... and Sunday always comes too late"
end
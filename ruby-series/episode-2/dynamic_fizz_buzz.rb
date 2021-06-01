# 1.upto(100) do |i|
#   if (i % 3 == 0 && i % 4 == 0 && i % 5 == 0)
#     puts 'FizzSussBuzz'
#   elsif (i % 3 == 0 && i % 4 == 0)
#     puts 'FizzSuss'
#   elsif (i % 4 == 0 && i % 5 == 0)
#     puts 'SussBuzz'
#   elsif (i % 3 == 0)
#     puts 'Fizz'
#   elsif (i % 4 == 0)
#     puts 'Suss'
#   elsif (i % 5 == 0)
#     puts 'Buzz'
#   else
#     puts i
#   end
# end

def dynamic_fizz_buzz(range, rules)
  range.each do |i|
    result = ''

    rules.each do |(text, divisor)|
      result << text if (i % divisor == 0)
    end

    puts result == '' ? i : result
  end
end

dynamic_fizz_buzz(
  (1..100),
  [
    ['Fizz', 3],
    ['Suss', 4],
    ['Buzz', 5]
  ]
)
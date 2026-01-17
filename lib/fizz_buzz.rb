def fizz_buzz_value(number)
  return 'FizzBuzz' if number % 15 == 0
  return 'Fizz' if number % 3 == 0
  return 'Buzz' if number % 5 == 0
  number
end

def fizz_buzz(number)
  (1..number).map { |n| fizz_buzz_value(n) }
end

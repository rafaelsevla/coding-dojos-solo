# frozen_string_literal: true

BASE_NUMBERS = [1, 5, 10, 50, 100, 500, 1000].freeze
ROMAN_LETTERS = %w[I V X L C D M].freeze

INVERT_ROMAN_MAP = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000
}.freeze

ROMAN_MAP = {
  1000 => 'M',
  500 => 'D',
  100 => 'C',
  50 => 'L',
  10 => 'X',
  5 => 'V',
  1 => 'I'
}.freeze

def quebradicos(result)
  roman_symbol = result.split('').first
  roman_index = ROMAN_LETTERS.index(roman_symbol)
  next_letter = ROMAN_LETTERS[roman_index + 1]

  puts "result #{result}"

  "#{roman_symbol}#{next_letter}"
end

def convert(number)
  return ROMAN_MAP[number] if ROMAN_MAP.key?(number)

  base_num = ROMAN_MAP.keys.find { |n| number >= n }
  result = ROMAN_MAP[base_num] * (number / base_num)

  puts "resssult #{result}"

  return quebradicos(result) if result.size > 3

  result
end

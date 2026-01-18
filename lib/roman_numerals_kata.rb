# frozen_string_literal: true

ROMAN_MAP = {
  1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD',
  100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL',
  10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV',
  1 => 'I'
}.freeze

def convert(number)
  return '' if number.zero?

  base_num = ROMAN_MAP.keys.find { |n| number >= n }

  ROMAN_MAP[base_num] + convert(number - base_num)
end

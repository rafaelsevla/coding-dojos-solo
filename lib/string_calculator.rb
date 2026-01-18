# frozen_string_literal: true

class NumeroNegativoError < StandardError; end

def extract_numbers(text)
  text.scan(/-?\d+/).map(&:to_i)
end

def raise_if_negative_numbers(numbers)
  negatives = numbers.select(&:negative?)

  return if negatives.empty?

  raise NumeroNegativoError,
        "negatives not allowed: #{negatives.join(', ')}"
end

def add(text)
  return 0 if text.empty?

  numbers = extract_numbers(text)
  raise_if_negative_numbers(numbers)
  numbers.reject { |n| n > 1000 }.sum
rescue NumeroNegativoError => e
  e.message
end

add('100,2,2')

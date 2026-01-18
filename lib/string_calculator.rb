# frozen_string_literal: true

class NumeroNegativoError < StandardError; end

def ignore_thousands(number)
  return '' if number.to_i >= 1000

  number
end

def raise_if_negative_numbers(list)
  negatives_check = list.join(',').scan(/-\d{1}/)
  raise NumeroNegativoError, "negatives not allowed: #{negatives_check.join(', ')}" if negatives_check.length.positive?
end

def split_and_sum(text)
  splited = text.split(',')
  puts "splited #{splited}"
  raise_if_negative_numbers(splited)
  with_thousands_ignored = splited.map { |num| ignore_thousands(num) }

  scan = with_thousands_ignored.join.scan(/\d{1}/)
  scan.map(&:to_i).sum
end

def define_when_split_and_sum?(text)
  text.include?(',') or text.include?(';')
end

def add(text)
  begin # rubocop:disable Style/RedundantBegin
    return 0 if text == ''

    return split_and_sum(text) if define_when_split_and_sum?(text)

    text.to_i
  rescue NumeroNegativoError => e
    e.message
  end
end

puts add('1')
puts add('1,-2,-3')

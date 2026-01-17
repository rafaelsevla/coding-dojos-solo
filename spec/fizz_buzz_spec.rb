require_relative '../lib/fizz_buzz'

RSpec.describe 'FizzBuzz Challenge' do
  it 'returns 1' do
    expect(fizz_buzz(1)).to eq([1])
  end

  it 'returns Fizz for multiples of 3' do
    expect(fizz_buzz(3).last).to eq('Fizz')
  end

  it 'returns Buzz for multiples of 5' do
    expect(fizz_buzz(5).last).to eq('Buzz')
  end

  it 'returns FizzBuzz for multiples of 15' do
    expect(fizz_buzz(15).last).to eq('FizzBuzz')
  end

  context 'returns 1 from 15' do
    it 'with correct Fizz, Buzz and FizzBuzz' do
      expect(fizz_buzz(15)).to eq([1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz'])
    end
  end
end

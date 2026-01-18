# frozen_string_literal: true

require_relative '../lib/roman_numerals_kata'

RSpec.describe 'Roman Numerals Kata Challenge' do
  describe '#convert' do
    context 'Basic symbols' do
      it { expect(convert(1)).to eq('I') }
      it { expect(convert(5)).to eq('V') }
      it { expect(convert(10)).to eq('X') }
      it { expect(convert(50)).to eq('L') }
      it { expect(convert(100)).to eq('C') }
      it { expect(convert(500)).to eq('D') }
      it { expect(convert(1000)).to eq('M') }
    end

    context 'Repetition values' do
      it { expect(convert(2)).to eq('II') }
      it { expect(convert(3)).to eq('III') }
      it { expect(convert(20)).to eq('XX') }
      it { expect(convert(30)).to eq('XXX') }
      it { expect(convert(3000)).to eq('MMM') }
    end

    context 'Subtraction values' do
      it { expect(convert(4)).to eq('IV') }
      it { expect(convert(9)).to eq('IX') }
      it { expect(convert(40)).to eq('XL') }
      it { expect(convert(90)).to eq('XC') }
      it { expect(convert(400)).to eq('CD') }
      it { expect(convert(900)).to eq('CM') }
      it { expect(convert(1994)).to eq('MCMXCIV') }
    end
  end
end

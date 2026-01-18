# frozen_string_literal: true

require_relative '../lib/string_calculator'

RSpec.describe 'String Calculator Challenge' do
  context '#add' do
    it { expect(add('')).to eq(0) }
    it { expect(add('1')).to eq(1) }
    it { expect(add('2')).to eq(2) }
    it { expect(add('1,2')).to eq(3) }
    it { expect(add("1\n2,3")).to eq(6) }
    it { expect(add("//;\n1;2")).to eq(3) }
    it { expect(add('2,1001')).to eq(2) }
    it { expect(add('"1,-2,-3"')).to eq('negatives not allowed: -2, -3') }
  end
end

require 'oystercard'

describe Oystercard do
  let(:oystercard) { Oystercard.new }
  
  describe '#balance' do
    it 'set to 0 by default' do
      expect(oystercard.balance).to eq(0)
    end
  end
end

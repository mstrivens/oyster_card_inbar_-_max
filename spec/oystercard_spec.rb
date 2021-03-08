require 'oystercard'

describe Oystercard do
  let(:oystercard) { Oystercard.new }

  describe '#balance' do
    it 'set to 0 by default' do
      expect(oystercard.balance).to eq(0)
    end
  end

  describe '#top_up' do

    context 'given 5 as amount' do
      it 'tops up balance by 5' do
        expect { oystercard.top_up(5) } .to change{
          oystercard.balance }.by 5
      end
    end

    context 'given 10 as amount' do
      it 'tops up balance by 10' do
        expect { oystercard.top_up(10) } .to change{
          oystercard.balance }.by 10
        end
      end
  end
end

require 'code_changer'
describe Codechanger do
  it 'contains a hash of coins' do
    expect(subject.coin_hash).to eq({200 => '£2', 100 => '£1', 50 => '50p', 20 => '20p', 10 => '10p', 5 => '5p', 2 => '2p', 1 => '1p' })
  end

  describe '.change()' do
    it 'only accepts integers as an argument' do
      expect { subject.change('thrirty pounds') }.to raise_error('Not an integer')
    end

    it 'accepts 1000p and returns an array of 5 £2 coins' do
      expect(subject.change(1000)).to eq ['£2', '£2', '£2', '£2', '£2']
    end

    it 'accepts 2500p and returns an array of 12 £2 coins and one £1 coin' do
      expect(subject.change(2500)).to eq ['£2', '£2', '£2', '£2', '£2', '£2', '£2', '£2', '£2', '£2', '£2', '£2', '£1']
    end
  end
end

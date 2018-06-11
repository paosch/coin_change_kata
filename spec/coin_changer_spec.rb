require 'code_changer'
describe Codechanger do
  it 'contains and array of coins' do
    expect(subject.coin_array).to eq [200, 100, 50, 20, 10, 5, 2, 1]
  end

  describe '.change()' do
    it 'only accepts integers as an argument' do
      expect { subject.change('thrirty pounds') }.to raise_error('Not an integer')
    end

    it 'accepts 1000p and returns an array of 5 2 pound coins' do
      expect(subject.change(1000)).to eq [200, 200, 200, 200, 200]
    end

    it 'accepts 2500p and returns an array of 5 2 pound coins' do
      expect(subject.change(2500)).to eq [200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 100]
    end
  end
end

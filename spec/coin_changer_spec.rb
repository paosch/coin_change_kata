require 'code_changer'
describe Codechanger do
  it 'contains and array of coins' do
    expect(subject.coin_array).to eq [200, 100, 50, 20, 10, 5, 2, 1]
  end

  describe '.change()' do
    it 'only accepts integers as an argument' do
      expect { subject.change('thrirty pounds') }.to raise_error('Not an integer')
    end
  end
end

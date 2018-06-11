require 'code_changer'
describe Codechanger do
  it 'contains and array of coins' do
    expect(subject.coin_array).to eq [200, 100, 50, 20, 10, 5, 2, 1]
  end
end

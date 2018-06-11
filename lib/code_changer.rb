class Codechanger
  attr_reader :coin_array
  def initialize
    @coin_array = [200, 100, 50, 20, 10, 5, 2, 1]
  end

  def change(amount)
    raise 'Not an integer' unless amount.is_a? Integer
    coin_holder = []
    @coin_array.each do |coin|
      (amount / coin).times do
        coin_holder << coin
        amount -= coin
      end
    end
    coin_holder
  end
end

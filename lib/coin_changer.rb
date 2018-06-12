class Coinchanger
  attr_reader :coin_hash
  def initialize
    @coin_hash = { 200 => '£2', 100 => '£1', 50 => '50p', 20 => '20p',
                   10 => '10p', 5 => '5p', 2 => '2p', 1 => '1p' }
  end

  def change(amount)
    raise 'Not an integer' unless amount.is_a? Integer
    coin_holder = []
    @coin_hash.each do |k, v|
      (amount / k).times do
        coin_holder << v
        amount -= k
      end
    end
    coin_holder
  end
end

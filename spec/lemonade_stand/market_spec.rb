require_relative '../spec_helper'

describe LemonadeStand::Market do
  it 'retrieves market info for lemonade price and sign costs' do
    market = LemonadeStand::Market.new
    assert_send([market, :price])
    assert_send([market, :sign_cost])
  end
end

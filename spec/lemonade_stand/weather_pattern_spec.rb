require_relative '../spec_helper'

describe LemonadeStand::WeatherPattern do
  it 'has a random forecast' do
    wp = LemonadeStand::WeatherPattern.new
    wp2 = LemonadeStand::WeatherPattern.new
    refute_equal wp.forecast, wp2.forecast
  end

  it 'has a random report' do
    wp = LemonadeStand::WeatherPattern.new
    wp2 = LemonadeStand::WeatherPattern.new
    refute_equal wp.report, wp2.report
  end
end

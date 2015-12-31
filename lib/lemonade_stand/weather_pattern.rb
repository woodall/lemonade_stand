module LemonadeStand
  class WeatherPattern

    attr_reader :forecast, :report

    WEATHER = ['sunny', 'windy', 'calm', 'cloudy', 'rainy']
    CLIMATE = ['hot', 'warm', 'balmy', 'cool', 'cold' ]

    WEATHER_POINTS = {
      'sunny' => 2,
      'windy' => 1,
      'calm' => 0,
      'cloudy' => -1,
      'rainy'=> -2,
      'hot' => 2,
      'warm' => 1,
      'balmy' => 0,
      'cool' => 1,
      'cold' => -2
    }

    def forecast
      "#{get_climate} and #{get_weather}"
    end

    def report
      run_report
      "#{@climate} and #{@weather} : WEATHER POINTS #{get_points}"

    end

    def get_weather
      @weather ||= WEATHER.sample
    end

    def get_climate
      @climate ||= CLIMATE.sample
    end

    def get_points
      WEATHER_POINTS[@weather] + WEATHER_POINTS[@climate]
    end

private
    def run_report
      climate_index = CLIMATE.index(@climate) + variation
      weather_index = WEATHER.index(@weather) + variation

      @climate = climate_index >= CLIMATE.size ? CLIMATE[-1] : CLIMATE[climate_index]
      @weather = weather_index >= WEATHER.size ? WEATHER[-1] : WEATHER[weather_index]
    end

    def variation
      if rand(3) > 1
        rand(3)
      else
        0
      end
    end
  end
end

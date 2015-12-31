module LemonadeStand
  class Day

    def initialize
    end

    def forecast
      @forecast ||= LemonadeStand::Weather.new(@day).forecast
    end

    def weather_report
      @weather ||= LemonadeStand::Weather.weather_report self
    end

    # def sales_for choice
    #   data = {
    #            glasses_sold: calculate_glasses_sold(choice),
    #            choice:       choice,
    #            day:          self,
    #          }
    #   LemonadeStand::Result.new data
    # end

    # def cost_per_glass
    #   case @number
    #   when (1..2) then 2
    #   when (3..4) then 4
    #   else 5
    #   end
    # end

    # def calculate_glasses_sold choice
    #   max_sales = [choice.max_sales, event.modify(choice)].max
    #   [choice.glasses_made, max_sales].min.round
    # end

    # def event
    #   @event ||= Event.new.for(self)
    # end

  end
end

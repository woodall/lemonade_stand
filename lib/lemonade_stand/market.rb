module LemonadeStand
  class Market

    COG_LOW   = 105
    COG_HIGH  = 650
    SIGN_LOW  = 90
    SIGN_HIGH = 110

    def initialize
      price
      sign_cost
    end

    def price
      @price ||= [*COG_LOW..COG_HIGH].sample
    end

    def sign_cost
      @sign ||= [*SIGN_LOW..SIGN_HIGH].sample
      @sign - (@sign % 5)
    end
  end
end

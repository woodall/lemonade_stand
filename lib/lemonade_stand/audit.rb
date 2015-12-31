module LemonadeStand
  class Audit < LemonadeStand::Application

    def initialize
      super
    end

    def squeeze
      1
    end

    def end_game
      puts "The game  is over!"
      `say The game is over!` if @text['settings']['mute']
      squeeze
    end
  end
end

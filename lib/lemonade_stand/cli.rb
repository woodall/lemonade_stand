require 'yaml'

module LemonadeStand
  class CLI < LemonadeStand::Application

    def initializer
      load_yaml
    end

    def play
      puts settings.welcome
      puts " "
      settings.get_players
      settings.get_rounds
      settings.start_game
      end_game
    end

  private

    def end_game
      LemonadeStand::Audit.new.squeeze
    end

    def settings
      @settings ||= Setting.new
    end
  end
end

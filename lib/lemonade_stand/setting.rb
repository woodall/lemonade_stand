module LemonadeStand
  class Setting < LemonadeStand::Application

    attr_reader :player_count, :round_count

    def initialize
      load_yaml
    end

    def welcome
      @text['settings']['game_banner']
    end

    def get_players
      ask @text['setup']['player_count']
      @player_count = gets.chomp
      @player_count = validate @player_count
    end

    def get_rounds
      ask @text['setup']['round_count']
      @round_count = gets.chomp
      @round_count = validate @round_count
    end

    def start_game
      recruit_gamemaster({
        players: @player_count,
        rounds: @round_count
      })
      @gamemaster.start_game
    end

  private

    def recruit_gamemaster config
      @gamemaster ||= LemonadeStand::GameMaster.new(config)
    end

    def validate entry
      while is_a_letter? entry
        puts "'#{entry}' is not a number."
         `say Error please enter a number` if @text['settings']['mute']

        print " > "
        entry = gets.chomp
        @foo = entry.to_i
      end
      entry.to_i || @foo
    end

    def is_a_letter? entry
      !(entry.to_i.to_s == entry)
    end
  end
end

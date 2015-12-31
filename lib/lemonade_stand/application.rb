module LemonadeStand
  class Application

    def initialize
      load_yaml
    end

    def money amount
      amount = amount.to_f / 100.to_f
      sprintf('%.2f', amount)
    end

    def ask(question)
      puts question
      print " > "
      `say "#{question}"` if @text['settings']['mute']
    end

    def load_yaml
      filepath = File.join(File.dirname(__FILE__),"../yaml/audio_script.yaml")
      @text = YAML.load_file(filepath)
    end
  end
end


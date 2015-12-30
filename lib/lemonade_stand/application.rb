module LemonadeStand
  class Application

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


class PrintEmotion
  def initialize(emotion)
    @emotion = emotion
  end

  def print_emotion
    if @emotion == 'cheerfulness'
      puts '(ᵔ◡ᵔ)'
      elif @emotion == 'fatigue'
      puts '(￣ ￣|||)'
    else
      puts '?!'       
    end
  end
end

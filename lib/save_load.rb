require 'json'

class SaveLoad
  FILENAME = 'save_game.json'

  def data_serialize(character)
    data = [
      'health' => character.health, 
      'mana' => character.mana,
      'fatigue' => character.fatigue,
      'happiness' => character.happiness,
      'money' => character.money
    ]
  end

  def save(character)
    File.write(FILENAME, JSON.dump(data_serialize(character)))
  end

  def load(character)
    file = File.read(FILENAME)
    data = JSON.parse(file)
    data.each { |i| @character.send("#{i[0].to_sym}=", i[1]) }
  end
end
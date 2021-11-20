class SaveOrLoad
  FILENAME = 'save.game'.freeze
  PARAMETERS = %w[health mana happiness fatigue money].freeze

  def self.save(character)
    File.open(FILENAME, 'w') unless File.zero?(FILENAME)
    PARAMETERS.each do |param|
      File.open(FILENAME, 'a') { |file| file.write("#{character.send param} ") }
    end
  end

  def self.load(character)
    parameters = File.open(FILENAME, 'r', &:read)
    parameters = parameters.split
    i = 0
    PARAMETERS.each do |param|
      character.send("#{param}=", parameters[i].to_i)
      i += 1
    end
  end
end

require 'json'
# require_relative 'action'

class ConfigLoader
  FILENAME = './lib/config/config.json'

  def initialize(character, actions)
    @character = character
    @actions = actions
  end

  def load_config
    file = File.read(FILENAME)
    data = JSON.parse(file)
    character_config(data['initial']) if data.include?('initial')
    actions_config(data['actions'])
  end

  def character_config(data)
    data.each { |i| @character.send("#{i[0].to_sym}=", i[1]) }
  end

  def actions_config(data)
    data.each do |action|
      new_action = Action.new(name: action[name], description: action[description], effects: effects_config(action['effects']))
      @action.store(new_action)
    end
  end

  def effects_config(data)
  end
end
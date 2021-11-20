require_relative 'io_adapter'
require_relative 'actions_pool'
INDICATORS = %w[health mana happiness fatigue money].freeze

def print_information
  print_indicators
  print_actions
end

def print_actions
  IOAdapter.instance.output "\n[ACTIONS]:"
  actions = @actions_pool.avaliable_actions(@character)
  actions.each { |key, value| IOAdapter.instance.output("[#{key}] - #{value.name} (#{value.description})") }
  IOAdapter.instance.output 'Enter "s" to save the data'
  IOAdapter.instance.output 'Enter "l" to load the data'
  IOAdapter.instance.output 'Enter "q" to exit the game'
end

def print_indicators
  IOAdapter.instance.output "\n[PARAMETERS]:"
  INDICATORS.each { |param| IOAdapter.instance.output "[#{param}] : #{@character.send param}" }
end

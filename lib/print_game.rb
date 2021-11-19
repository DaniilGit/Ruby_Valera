class PrintGame
  def print_information
    print_indicators
    print_actions
  end

  def print_actions
    IOAdapter.instance.output "\n[ACTIONS]:"
    actions = @actions_pool.avaliable_actions(@character)
    actions.each { |key, value| IOAdapter.instance.output("[#{key}] - #{value.name} (#{value.description})") }
    IOAdapter.output 'Enter "s" to save the data'
    IOAdapter.output 'Enter "l" to load the data'
  end

  def print_indicators
    IOAdapter.output "\n[PARAMETERS]:"
    INDICATORS.each { |param| IOAdapter.output "[#{param}] : #{@character.send param}" }
  end
end

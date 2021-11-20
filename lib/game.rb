class Game
  def initialize(character, actions_pool)
    @character = character
    @actions_pool = actions_pool
    @stack = []
  end

  def game_run
    until @character.dead?
      print_information
      value = IOAdapter.instance.input '[CHOOSE AN ACTION]:'
      next_command = @actions_pool.avaliable_actions(@character)[value]
      unless next_command.nil?
        @stack.push(@character.clone)
        next_command.execute(@character)
      end
      other_actions(value)
    end
    print_indicators
    IOAdapter.output "\x1B[31m \nValera is dead ;-; \x1B[0m \n"
  end

  def other_actions(value)  
    if value == 's'
      SaveOrLoad.save(@character)
      IOAdapter.output('Saving was successful.')
      elif value == 'l'
      SaveOrLoad.load(@character)
      IOAdapter.output 'Download was successful.'
    else
      IOAdapter.output('Wrong command')
    end
  end
end

class Game
  def initialize(character, actions_pool)
    @character = character
    @actions_pool = actions_pool
    @stack = []
  end

  def game_run
    until @character.dead?
      value = IOAdapter.instance.input '[CHOOSE AN ACTION]:'
      IOAdapter.input(command)
      # something_statement
      other_actions(value)
    end
    IOAdapter.output "\x1B[31m \nValera is dead ;-; \x1B[0m \n"
  end

  def other_actions(value)  
    if value == 's'
        # command_saveGame
        # IOAdapter.output('Saving was successful.')
      elif value == 'l'
      #  command_loadGame
      #  IOAdapter.output 'Download was successful.'
    else
      IOAdapter.output('Wrong command')
    end
  end
end

require_relative 'print_game'

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
    IOAdapter.instance.output "\x1B[31m \nValera is dead ;-; \x1B[0m \n"
  end

  def other_actions(value)  
    if value == 's'
      SaveOrLoad.save(@character)
      IOAdapter.instance.output('Saving was successful.')
      elif value == 'l'
      SaveOrLoad.load(@character)
      IOAdapter.instance.output 'Download was successful.'
    end
  end
end

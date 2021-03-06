require_relative 'save_load'

class MainMenu
  def initialize(character, actions)
    @character = character
    @game = Game.new(character, actions)
  end

  def beginning
    IOAdapter.instance.output "[WELCOME]\n
    [1] - Start new game\n
    [2] - Continue game\n"
    beginning = IOAdapter.instance.input "\n[CHOOSE THE SOLUTION]: "
    case beginning
    when '1'
      @game.game_run
    when '2'
      SaveOrLoad.new.load(@character)
      @game.game_run
    end
  end
end

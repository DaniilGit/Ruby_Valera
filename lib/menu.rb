class Menu
<<<<<<< HEAD
  def main_menu
    IOAdapter.instanse.output("
      === Game - Marginal Valera ===\n
      'N' - Start new game\n
      'Q' - Exit the game\n
      'L' - Load the game from a file\n
      'S' - Save the game to a file\n
      ==============================\n
    ")
  end

  def actions_menu(actions)
    IOAdapter.instanse.output("=== Actions ===\n")

    i = 1
    actions.each do |act|
      IOAdapter.instanse.output("#{i}) #{act.name} - #{act.description}\n")
      i += 1
=======
  def initialize(character, actions)
    @character = character
    @game = Game.new(character, actions)
  end

  def beginning
    IOAdapter.instance.output "[WELCOME]\n
    '1' - Start new game\n
    '2' - Continue game\n"
    beginning = IOAdapter.instance.input "\n[CHOOSE THE SOLUTION]: "
    case beginning
    when '1'
      @game.run
    when '2'
      SaveOrLoad.load(@character)
      @game.run
>>>>>>> configuration
    end
  end
end

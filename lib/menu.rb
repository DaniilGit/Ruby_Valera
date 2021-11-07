class Menu
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
    end
  end
end

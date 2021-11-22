require_relative 'valera_init'
require_relative 'config_load'
require_relative 'main_menu'
require_relative 'actions_pool'
require_relative 'io_adapter'
require_relative 'game_menu'
require_relative 'game'

class Application
  def initialize 
    @actions = {}
  end

  def run
    character = ValeraInit.new
    ConfigLoader.new(character, @actions).load_configuration
    actions_pool = ActionsPool.new(@actions)
    MainMenu.new(character, actions_pool).beginning
  end
end

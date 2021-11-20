require_relative 'valera_init.rb'
require_relative 'config_load.rb'
require_relative 'menu.rb'
require_relative 'actions_pool.rb'
require_relative 'io_adapter.rb'
require_relative 'game.rb'

class Application
  actions = {}

  def run
    character = ValeraInit.new
    ConfigLoader.new(character, actions)
    actions_pool = ActionsPool.new(actions)
    Menu.new(character, actions_pool).beginning
  end
end
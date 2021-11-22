require_relative '../lib/game'
require 'rspec'

RSpec.describe Game do
  let(:valera) { Valera.new(100, 0, 0, 0, 0) }
  let(:valera_dead) { Valera.new(-9, -9, -9, -9, -9) }
  let(:game) { Game.new(valera, data) }
  let(:game_dead) { Game.new(valera_dead, data) }

  describe '#correct_input?' do
    context 'when input is correct' do
      context 'when choose action' do
        it { expect(game.correct_input?('1')).to be_truthy }
      end
      context 'when load' do
        it { expect(game.other_actions('l')).to be_truthy }
      end
      context 'when save' do
        it { expect(game.other_actions('s')).to be_truthy }
      end
      context 'when exit' do
        it { expect(game.other_actions('q')).to be_truthy }
      end
    end
    context 'when input is incorrect' do
      it { expect(game.other_actions('o')).to be_falsey }
    end
  end
end

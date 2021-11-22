require_relative '../lib/game'
require 'rspec'

RSpec.describe Game do
  let(:valera) { ValeraInit.new }
  let(:game) { Game.new(valera, data) }

  describe '#correct_input?' do
    context 'when input is correct' do
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

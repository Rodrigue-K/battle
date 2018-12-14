require 'player'

describe Player do
  context '#name' do
    it 'returns the players name' do
      player = Player.new('Jo Joe')
      expect(player.name).to eq 'Jo Joe'
    end
  end
end

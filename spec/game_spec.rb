require './lib/game'

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  let(:game) { Game.new(:player1, :player2) }

  subject do
    Game.new(:player1, :player2)
  end

  context 'initialization' do
    it 'creates player 1 when initialized' do
      expect(subject.player1).to eq(:player1)
    end

    it 'creates player 2 when initialized' do
      expect(subject.player2).to eq(:player2)
    end
  end

  context 'tracking the current turn' do
    it 'player 1 goes first' do
      expect(subject.current_player).to eq(:player1)
    end

    it 'next_turn switches the current turn player' do
      expect { subject.switch_player }
        .to change { subject.current_player }.from(:player1).to(:player2)
    end
  end

  it 'wounds a player' do
    expect(player2).to receive(:wound)
    subject.hit(player2)
  end
end

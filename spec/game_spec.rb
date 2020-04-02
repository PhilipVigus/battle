require './lib/game'

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  let(:game) { Game.new(:player1, :player2) }

  subject do
    Game.new(:player1, :player2)
  end

  it 'has player 1' do
    expect(subject).to respond_to(:player1)
  end

  it 'has player 2' do
    expect(subject).to respond_to(:player2)
  end

  it 'creates player 1 when initialized' do
    expect(subject.player1).to eq(:player1)
  end

  it 'creates player 2 when initialized' do
    expect(subject.player2).to eq(:player2)
  end

  it 'wounds a player' do
    expect(player2).to receive(:wound)
    subject.hit(player2)
  end
end
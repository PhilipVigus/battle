require './lib/game'

describe Game do
  let(:player2) { double(:player) }

  it 'wounds a player' do
    expect(player2).to receive(:wound)
    subject.hit(player2)
  end
end
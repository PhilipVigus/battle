require 'player'

describe Player do
   subject (:player) {Player.new('Phil')}
  it " should return it's name" do
    expect(player.name).to eq 'Phil'
  end
end
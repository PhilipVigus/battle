require './lib/player'

describe Player do
  subject (:player) {Player.new('Phil')}
  it " should return it's name" do
    expect(subject).to respond_to(:name)
  end
end
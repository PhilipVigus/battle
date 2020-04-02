require './lib/player'

describe Player do
  subject (:player) { Player.new('Phil') }

  it "returns it's name" do
    expect(player.name).to eq('Phil')
  end

  it "has default hit points when created" do
    expect(player.hit_points).to eq(Player::DEFAULT_HIT_POINTS)
  end

  it "hitting the player reduces the hit points by the standard amount" do
    player.hit
    expect(player.hit_points).to eq(Player::DEFAULT_HIT_POINTS - Player::ATTACK_DAMAGE)
  end
end

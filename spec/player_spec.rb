require './lib/player'

describe Player do
  subject { Player.new('Phil') }

  it "returns it's name" do
    expect(subject.name).to eq('Phil')
  end

  it "has default hit points when created" do
    expect(subject.hit_points).to eq(Player::DEFAULT_HIT_POINTS)
  end

  it "hitting the player reduces the hit points by the standard amount" do
    subject.wound(10)
    expect(subject.hit_points).to eq(Player::DEFAULT_HIT_POINTS - 10)
  end

  it "is alive when it has positive hit points" do
    expect(subject).not_to be_dead
  end

  it "is dead when it has 0 or less hit points" do
    subject.wound(Player::DEFAULT_HIT_POINTS)
    expect(subject).to be_dead
  end
end

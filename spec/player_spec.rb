require "player"

describe Player do
  subject(:player) { described_class.new("Van") }

  it "returns the name of the player" do
    expect(player.name).to eq("Van")
  end
end

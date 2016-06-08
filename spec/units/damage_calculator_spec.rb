require 'damage_calculator'

describe DamageCalculator do
  let(:player2) { spy(:player, hitpoints: 100) }

  describe "#attack" do
    it "should ask player to remove hitpoints if attacked" do
      subject.attack(player2)
      expect(player2).to have_received(:remove_hitpoints)
    end
  end
end

describe Aggregate do

  describe "validations" do
    it "requires a flag" do
      expect(Aggregate.new).to_not be_valid

      flag = Flag.new
      expect(Aggregate.new(flag: flag)).to be_valid
    end
  end

end

describe Flag do

  describe "validations" do
    it "requires a name" do
      expect(Flag.new).to_not be_valid

      expect(Flag.new(name: "name")).to be_valid
    end
  end

end

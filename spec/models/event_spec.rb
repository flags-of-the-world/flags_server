describe Event do

  describe "#save" do
    it "updates the correct aggregate" do
      aggregate = Aggregate.first

      expect(aggregate.correct_count).to eq(0)
      expect(aggregate.total_count).to eq(0)

      event = Event.new(
        flag_name: "Afghanistan",
        mode: "puzzle",
        variant: "easy",
        correct: "true"
      )
      event.save

      aggregate.reload
      expect(aggregate.correct_count).to eq(1)
      expect(aggregate.total_count).to eq(1)

      event = Event.new(
        flag_name: "Afghanistan",
        mode: "puzzle",
        variant: "easy",
        correct: "false"
      )
      event.save

      aggregate.reload
      expect(aggregate.correct_count).to eq(1)
      expect(aggregate.total_count).to eq(2)
    end
  end

end

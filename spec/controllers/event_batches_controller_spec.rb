describe EventBatchesController do

  let(:batch) do
    {
      events: [
        {
          flag_name:  "Afghanistan",
          mode:       "puzzle",
          difficulty: "easy",
          correct:    "true",
        },
        {
          flag_name:  "Afghanistan",
          mode:       "puzzle",
          difficulty: "easy",
          correct:    "false",
        },
      ]
    }.to_json
  end

  it "updates the correct aggregates" do
    post :create, batch
    expect(response.status).to eq(200)

    aggregate = Aggregate.first
    expect(aggregate.correct_count).to eq(1)
    expect(aggregate.total_count).to eq(2)
  end

end

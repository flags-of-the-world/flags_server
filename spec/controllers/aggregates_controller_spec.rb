describe AggregatesController do

  it "renders JSON for aggregates" do
    get :index
    data = JSON.parse(response.body)

    expect(data["aggregates"].size).to eq(Flag.count * 2)
  end

end

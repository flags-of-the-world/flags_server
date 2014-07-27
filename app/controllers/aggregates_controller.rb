class AggregatesController < ApplicationController

  def index
    render json: { aggregates: Aggregate.all }
  end

end

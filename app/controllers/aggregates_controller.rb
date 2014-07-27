class AggregatesController < ApplicationController

  def index
    render json: Aggregate.all.includes(:flag)
  end

end

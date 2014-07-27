class EventBatchesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    data = JSON.parse(request.body.read)

    data.fetch("events").each do |event_params|
      event = Event.new(event_params)
      event.save
    end

    render text: "submitted successfully"
  end

end

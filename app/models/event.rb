class Event
  include ActiveModel::Model
  attr_accessor :flag_name, :mode, :variant, :correct

  def correct
    @correct == "true"
  end

  def save
    aggregate = Aggregate.joins(:flag).where(
      flags: { name: flag_name },
      mode: mode,
      variant: variant
    ).first

    unless aggregate
      Rails.logger.error("No aggregate for #{flag_name}. Skipping.")
      return
    end

    aggregate.correct_count += 1 if correct
    aggregate.total_count += 1

    aggregate.save!
  end

end

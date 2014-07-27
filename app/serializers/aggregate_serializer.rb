class AggregateSerializer < ActiveModel::Serializer
  attributes :flag_name, :mode, :difficulty, :correct_count, :total_count

  def flag_name
    object.flag.name
  end

end

class Aggregate < ActiveRecord::Base
  belongs_to :flag
  validates :flag, presence: true
end

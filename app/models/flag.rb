class Flag < ActiveRecord::Base
  validates :name, presence: true
end

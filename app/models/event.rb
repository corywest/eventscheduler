class Event < ActiveRecord::Base
  validates :title, :body, :start_time, :end_time, presence: true
  has_many :comments
end

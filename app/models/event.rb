class Event < ActiveRecord::Base
  has_many :comments
  validates :title, :body, :start_time, :end_time, presence: true
end

class Event < ActiveRecord::Base
  validates :title, :body, :start_time, :end_time, presence: true
end

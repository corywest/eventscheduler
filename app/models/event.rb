class Event < ActiveRecord::Base
  has_many :comments
  validates :title, :body, :start_time, :end_time, :start_date, :end_date, presence: true, uniqueness: true
end

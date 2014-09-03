class Event < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :title, :body, :start_time, :end_time, :start_date, :end_date, :hash_tag, presence: true
end

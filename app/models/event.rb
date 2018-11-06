class Event < ApplicationRecord
  validates :title, presence: true
  attr_accessor :date_range

# this checks if the event is all day or not 
  def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
  end
end

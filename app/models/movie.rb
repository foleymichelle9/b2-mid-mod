class Movie < ApplicationRecord
  belongs_to :studio

  validates_presence_of :name
end

class Song < ApplicationRecord
  has_many :voted_songs
  validates :name, :artist, presence: true
end

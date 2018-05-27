class Playlist < ApplicationRecord
  belongs_to :user
  has_many :voted_songs
  validates :title, presence: true
end

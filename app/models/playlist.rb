class Playlist < ApplicationRecord
  belongs_to :user
  has_many :voted_songs
  validates :title, :user_id, presence: true
end

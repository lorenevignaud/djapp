class VotedSong < ApplicationRecord
  belong_to :songs
  belongs_to :playlist
end

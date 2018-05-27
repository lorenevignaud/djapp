class CreateVotedSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :voted_songs do |t|
      t.string :name
      t.references :song
      t.references :playlist

      t.timestamps
    end
  end
end

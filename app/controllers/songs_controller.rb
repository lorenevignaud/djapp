class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @songs = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.user = current_user
    if @song.save
      redirect_to songs_path, notice: 'song was successfully created.'
    else
      render :new
    end
  end

  private

  def songs_params
    params.require(:song).permit(:name, :artist, :album)
  end
end

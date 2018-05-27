class PlaylistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[id])
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.create(playlist_params)
    redirect to playlists_path, notice: 'Playlist was successfully created.'
  end

  def edit
    @playlist = Playlist.find(params[id])
  end

  def update
    @playlist = Playlist.find(params[id])
    @restaurant.update(playlist_params)
    redirect to @playlist, notice: 'Playlist was successfully updated.'
  end

  def destroy
    @playlist = Playlist.find(params[id])
    @restaurant.destrot(playlist_params)
    redirect to playlists_path, notice: 'Playlist was successfully deleted.'
  end

  private

  def playlist_params
    params.require(:playlist).permit(:title)
  end
end


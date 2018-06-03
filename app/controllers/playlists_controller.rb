class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def show
    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.create(playlist_params)
    redirect to playlists_path, notice: 'Playlist was successfully created.'
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(playlist_params)
    redirect_to @playlist, notice: 'Playlist was successfully updated.'
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destrot(playlist_params)
    redirect_to playlists_path, notice: 'Playlist was successfully deleted.'
  end

  private

  def playlist_params
    params.require(:playlist).permit(:title)
  end
end


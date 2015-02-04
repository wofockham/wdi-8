class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @artist = Artist.find params[:id]
  end

  def update
  end

  def destroy
  end
end

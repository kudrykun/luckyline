class GalleriesController < ApplicationController
  def show
    @gallery = Gallery.friendly.find(params[:id])
  end
end

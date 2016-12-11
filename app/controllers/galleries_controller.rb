class GalleriesController < ApplicationController
  def show
    @gallery = Gallery.friendly.find(params[:id])
    @category = @gallery.category
  end
end

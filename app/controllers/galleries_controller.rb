class GalleriesController < ApplicationController
  def show
    @gallery = Gallery.friendly.find(params[:id])
    @category = @gallery.category
    set_meta_tags title: @gallery.meta_title,
                  description: @gallery.meta_description
  end
end

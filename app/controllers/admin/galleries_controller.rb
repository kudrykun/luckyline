class Admin::GalleriesController < Admin::AdminController
  before_action :set_gallery, only: [:show,:edit,:update,:destroy]

  # GET /items
  # GET /items.json
  def index
    @galleries = Gallery.all.order(:id)
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  def new
    @gallery = Gallery.new
    @categories = Category.all
  end

  def edit
    @categories = Category.all
  end

  def create
    @gallery = Gallery.create(gallery_params)
    if params[:images]
      #===== The magic is here ;)
      params[:images].each { |image|
        @gallery.pictures.create(image: image)
      }
    end
    redirect_to admin_galleries_path
  end

  def update
    @gallery.update(gallery_params)
    if params[:images]
      #===== The magic is here ;)
      params[:images].each { |image|
        @gallery.pictures.create(image: image)
      }
    end
    redirect_to admin_gallery_path(@gallery)
  end

  def destroy
    @gallery.destroy
    redirect_to admin_galleries_path
  end

  private

  def set_gallery
    @gallery = Gallery.friendly.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:title, :category_id)
  end
end
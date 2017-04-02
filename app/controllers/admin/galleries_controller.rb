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
      if @gallery.half_wide?
        params[:images].each { |image|
          @gallery.pictures.create(half_wide: true,image: image)
        }
      else
        params[:images].each { |image|
          @gallery.pictures.create(image: image)
        }
      end
    end
    if params[:preview]
      if @gallery.half_wide?
        preview = Picture.create(half_wide: true,image: params[:preview])
      else
        preview = Picture.create(image: params[:preview])
      end
      logger.debug "*********** PREVIEW CHECK #{preview.half_wide?}"
      @gallery.preview = preview
      @gallery.save
    end
    record_activity(current_user.name + " создал новую галлерею " + @gallery.title)
    redirect_to admin_galleries_path
  end

  def update
    @gallery.update(gallery_params)
    if params[:images]
      #===== The magic is here ;)
      if @gallery.half_wide?
        params[:images].each { |image|
          @gallery.pictures.create(half_wide: true,image: image)
        }
      else
        params[:images].each { |image|
          @gallery.pictures.create(image: image)
        }
      end
    end
    if params[:preview]
      if @gallery.half_wide?
        preview = Picture.create(half_wide: true,image: params[:preview])
      else
        preview = Picture.create(image: params[:preview])
      end
      logger.debug "*********** PREVIEW CHECK #{preview.half_wide?}"
      @gallery.preview = preview
      @gallery.save
    end
    record_activity(current_user.name + " обновил галлерею " + @gallery.title)
    redirect_to admin_gallery_path(@gallery)
  end

  def destroy
    if @gallery.preview && @gallery.preview.image.exists?
      @gallery.preview.destroy
    end
    if @gallery.pictures.size > 0
      @gallery.pictures.each do |picture|
        picture.destroy
      end
    end
    gallery_title = @gallery.title
    @gallery.destroy
    record_activity(current_user.name + " удалил галлерею " + gallery_title)
    redirect_to admin_galleries_path
  end

  private

  def set_gallery
    @gallery = Gallery.friendly.find(params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:title, :description, :category_id,:meta_title,:meta_description,:header,:wide,:half_wide)
  end
end
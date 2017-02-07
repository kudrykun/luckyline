class Admin::ItemsController < Admin::AdminController
  before_action :set_item, only: [:show,:edit,:update,:destroy]
  # GET /items
  # GET /items.json
  def index
    @items = Item.all.order(:id)
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  def new
    @item = Item.new
    @categories = Category.all
  end

  def edit
    @categories = Category.all
  end

  def create
    @item = Item.create(item_params)
    if params[:images]
      #===== The magic is here ;)
      params[:images].each { |image|
        @item.pictures.create(image: image)
      }
    end
    if params[:preview]
        preview = Picture.create(image: params[:preview])
      @item.preview = preview
      @item.save
    end
    redirect_to admin_items_path
  end

  def update
    @item.update(item_params)
    if params[:images]
      #===== The magic is here ;)
      params[:images].each { |image|
        @item.pictures.create(image: image)
      }
    end
    if !@item.preview && params[:preview]
      preview = Picture.create(image: params[:preview])
      @item.preview = preview
      @item.save
    end
    redirect_to admin_item_path(@item)
  end

  def destroy
    if @item.preview && @item.preview.image.exists?
      @item.preview.destroy
    end
    if @item.pictures.size > 0
      @item.pictures.each do |picture|
        picture.destroy
      end
    end
    @item.destroy
    redirect_to admin_items_path
  end

  private

  def set_item
    @item = Item.friendly.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :category_id, :price,:subs,:meta_title,:meta_description,:header)
  end
end

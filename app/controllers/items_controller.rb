class ItemsController < ApplicationController

  # GET /items
  # GET /items.json
  def index
    @category = Category.friendly.find(params[:category_id])
    @categories = Category.all
    @subcategory = Subcategory.friendly.find(params[:subcategory_id])
    @items = @subcategory.items
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.friendly.find(params[:id])
    @category = @item.category
    @order = Order.new
    set_meta_tags title: @item.meta_title,
                  description: @item.meta_description
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :category_id, :subcategory_id)
    end
end

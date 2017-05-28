module Admin
class CategoriesController < AdminController

  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all.order(:id)
  end

  def show
  end

  def new
    @category = Category.new
    @categories = Category.all
  end

  def edit
    @categories = Category.all
  end

  def create
    @category = Category.create(category_params)
    if params[:subs][:sub_id]
      params[:subs][:sub_id].delete_at(0)
      params[:subs][:sub_id].each do |sub|
        subcategory = Category.find(sub)
        subcategory.parent_id = @category.id
        subcategory.save
      end
    end
    if params[:preview]
      preview = Picture.create(image: params[:preview])
      @category.preview = preview
      @category.save
    end
    record_activity(current_user.name + " создал новую категорию " + @category.title)
    redirect_to admin_categories_path
  end

  def update
    @category.update(category_params)
    if params[:subs][:sub_id]
      params[:subs][:sub_id].delete_at(0)
      params[:subs][:sub_id].each do |sub|
        subcategory = Category.find(sub)
        subcategory.parent_id = @category.id
        subcategory.save
      end
    end
    if !@category.preview && params[:preview]
      preview = Picture.create(image: params[:preview])
      @category.preview = preview
      @category.save
    end
    record_activity(current_user.name + " обновил категорию " + @category.title)
    redirect_to admin_category_path(@category)
  end


  def destroy
    if !(@category.title.to_s == 'catalog'.to_s)
      if @category.preview && @category.preview.image.exists?
        @category.preview.destroy
      end
      category_title = @category.title
      @category.destroy
      record_activity(current_user.name + " удалил категорию " + category_title)
    end
    redirect_to :back
  end

  private

  def set_category
    @category = Category.friendly.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:description, :parent_id, :title,:meta_title,:meta_description,:header)
  end
end
end

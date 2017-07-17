class Admin::OpinionsController < Admin::AdminController
  before_action :set_opinion, only: [:show, :edit, :update, :destroy]
  def index
    @opinions = Opinion.all.order(updated_at: :desc)
  end

  def show
  end

  def new
    @opinion = Opinion.new
  end

  def edit
  end

  def create
    @opinion = Opinion.create(opinion_params)
    if params[:images]
      params[:images].each { |image|
        @opinion.pictures.create(image: image)
      }
    end
    record_activity(current_user.name + " создал новый отзыв " + @opinion.text)
    redirect_to admin_opinion_path(@opinion)
  end

  def update
    @opinion.update(opinion_params)
    if params[:images]
      params[:images].each { |image|
        @opinion.pictures.create(image: image)
      }
    end
    record_activity(current_user.name + " обновил отзыв " + @opinion.text)
    redirect_to admin_opinion_path(@opinion)
  end

  def destroy
    if Opinion.find(params[:id]).image.exists?
      Opinion.find(params[:id]).image.destroy
    end
    opinion_text = @opinion.text
    Opinion.find(params[:id]).destroy
    record_activity(current_user.name + " удалил отзыв " + opinion_text)
    redirect_to :back
  end

  private

  def set_opinion
    @opinion = Opinion.find(params[:id])
  end

  def opinion_params
    params.require(:opinion).permit(:name,:text,:vk,:ok)
  end
end

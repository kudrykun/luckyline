class OpinionsController < ApplicationController

  def index
    set_meta_tags title: 'Отзывы о салоне мебели Lucky-line',
                  description: 'Описание отзывов'
    @opinions = Opinion.all.page(params[:page]).per(5)
    @opinion = Opinion.new
  end

  def create
    @opinion = Opinion.new(opinion_params)
    if @opinion.save
      redirect_to opinions_path, notice: 'Item was successfully created.'
    else
      redirect_to opinions_path, notice: 'Item was not created.'
    end
  end

  private
  def opinion_params
    params.require(:opinion).permit(:name,:text,:info,:vk,:ok,:alt, :image)
  end
end

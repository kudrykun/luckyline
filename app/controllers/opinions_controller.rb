class OpinionsController < ApplicationController

  def index
    set_meta_tags title: 'Отзывы о салоне мебели Lucky-line',
                  description: 'Описание отзывов'
    @opinions = Opinion.all.order(created_at: :desc).page(params[:page]).per(5)
    @opinion = Opinion.new
  end

  def create
    @opinion = Opinion.create(opinion_params)
    if params[:images]
      params[:images].each { |image|
        @opinion.pictures.create(image: image)
      }
    end
    redirect_to opinions_path
  end

  private
  def opinion_params
    params.require(:opinion).permit(:name,:text,:vk,:ok)
  end
end

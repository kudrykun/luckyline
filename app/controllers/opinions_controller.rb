class OpinionsController < ApplicationController
  def index
    @opinions = Opinion.paginate(:page => params[:page])
    @opinion = Opinion.new
  end

  def show
    @opinion = Opinion.find(params[:id])
  end

  def create
    @opinion = Opinion.new(opinion_params)

    respond_to do |format|
      if @opinion.save
        format.html { redirect_to :back, notice: 'Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
  def opinion_params
    params.require(:opinion).permit(:name,:text, :info)
  end
end

class ResultsController < ApplicationController
  def index
    @search_results = Item.search_everywhere(params[:query])
    @search_result_size = @search_results.size
    @search_results = @search_results.page(params[:page]).per(10)
  end
end

class ResultsController < ApplicationController
  def index
    @search_results = Item.search_everywhere(params[:query])
  end
end

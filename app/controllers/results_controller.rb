class ResultsController < ApplicationController
  def index
    @query = params[:query]
    @search_item_results = Item.search_everywhere(@query)
    @search_gallery_results = Gallery.search_everywhere(@query)
    @search_result_size = @search_item_results.size + @search_gallery_results.size
  end
end

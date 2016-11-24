class Admin::ItemsController < ApplicationController
  layout 'admin'

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.friendly.find(params[:id])
  end

  def destroy
    Item.friendly.find(params[:id]).destroy
    redirect_to :back
  end
end

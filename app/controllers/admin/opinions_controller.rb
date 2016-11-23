class Admin::OpinionsController < ApplicationController
  layout 'admin'
  def index
    @opinions = Opinion.all
  end
end

class Admin::PicturesController < Admin::AdminController
  def edit
  end
  def update
    @picture = Picture.find(params[:id])
    @picture.update_attribute(:alt, params[:alt])
    respond_to do |format|
      format.js   { render :layout => false }
    end
  end
  def destroy
    @picture = Picture.find(params[:id])
    @picture.image = nil
    @picture.save
    @picture.destroy

    respond_to do |format|
      format.js   { render :layout => false }
    end
  end
end
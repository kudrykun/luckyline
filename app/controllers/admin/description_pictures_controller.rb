class Admin::DescriptionPicturesController < Admin::AdminController
  def edit
  end
  def update
    @picture = DescriptionPicture.find(params[:id])
    @picture.update_attribute(:alt, params[:alt])
    @picture.update_attribute(:caption, params[:caption])
    respond_to do |format|
      format.js   { render :layout => false }
    end
  end
  def destroy
    @picture = DescriptionPicture.find(params[:id])
    @picture.image.destroy
    @picture.destroy

    respond_to do |format|
      format.js   { render :layout => false }
    end
  end
end
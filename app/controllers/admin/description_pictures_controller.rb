class Admin::DescriptionPicturesController < Admin::AdminController
  def destroy
    @picture = DescriptionPicture.find(params[:id])
    @picture.image.destroy
    @picture.destroy

    respond_to do |format|
      format.js   { render :layout => false }
    end
  end
end
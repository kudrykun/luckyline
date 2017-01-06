class Admin::PicturesController < Admin::AdminController
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
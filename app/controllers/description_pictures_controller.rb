class DescriptionPicturesController < ApplicationController
  def create
    if params[:file].class == ActionDispatch::Http::UploadedFile
      @image = DescriptionPicture.new(image: params[:file])
      respond_to do |format|
        if @image.save
          format.json { render json: { location: @image.image.url, medium: @image.image(:medium) }.to_json, status: :ok }
        else
          format.json { render json: @image.errors, status: :unprocessable_entity }
        end
      end
    end
  end
end
class PhotosController < ApplicationController
    before_action :set_photo, only: [:show, :destroy]
    
    def index 
        @photos = Photo.all
    end

    def show
    end

    def create
        @photo = Photo.new(photo_params)
        if @photo.save
            render :show, status: :created
        else
            render_error
        end
    end

    def destroy
        @photo.destroy
        head :no_content
    end

    private
    def set_photo
        @photo = Photo.find(params[:id])
    end

    def photo_params
        params.require(:photo).permit(:image_url, :description, :longitude, :latitude, :user_id)
    end

    def render_error
        render json: { errors: @photo.errors.full_messages}, status: :unprocessable_entity
    end
end

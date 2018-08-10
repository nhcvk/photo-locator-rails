class PhotosController < ApplicationController
    before_action :set_photo, only: [:show, :update, :destroy]
    
    def index 
        @photos = Photo.all.order('created_at desc')
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

    def update
        if @photo.update(photo_params)
          render :show
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

class BookmarksController < ApplicationController
    before_action :set_user, only: [:index, :create, :destroy]

    def index  
        @bookmark = @user.photos
        render json: @bookmark.order('bookmarks.created_at desc')
    end

    def create
        @bookmark = Bookmark.new(bookmark_params)
        @bookmark.save     
    end

    def destroy
        @bookmark = Bookmark.find(params[:id])
        @bookmark.destroy
        head :no_content
    end

    private

    def bookmark_params
        params.require(:bookmark).permit(:user_id, :photo_id)
    end

    def set_user
        @user = User.find(params[:user_id])
    end

end

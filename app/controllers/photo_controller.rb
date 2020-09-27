class PhotoController < ApplicationController
  def index
    @user = User.joins(:photos)
    @user = User.find_by(id: params[:id])
    @photos = Photo.joins(:comments)
    @photos = @user.photos
    @comments = @user.comments
  end
  def display(user_id)
    @user = User.find_by(id: user_id)
    @photos = @user.photos
    @comments = @user.comments
  end
  helper_method :display_name
end

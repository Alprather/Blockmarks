class LikesController < ApplicationController
  def index

  end
  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.build(bookmark: @bookmark)

    if like.save
      flash[:notice] = "Bookmark liked."
    else
      flash[:alert] = "Liking Failed."
    end
    redirect_to [@bookmark.topic, @bookmark]
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.find(params[:id])
    if like.destroy
      flash[:notice] = "Bookmark unliked."
    else
      flash[:alert] = "Unliking failed."
    end
    redirect_to [@bookmark.topic, @bookmark]
  end
end

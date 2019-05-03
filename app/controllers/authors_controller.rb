class AuthorsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @post.to_json(only: [:title, :description, :id],
                              include: [author: { only: [:name]}]) }
    end
  end
end

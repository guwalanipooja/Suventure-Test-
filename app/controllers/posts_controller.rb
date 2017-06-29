class PostsController < ApplicationController

  def index
    @per_page = params[:per_page] || Post.per_page || 10
    @posts = current_user.posts.paginate(:per_page => @per_page, :page => params[:page])
  end

end

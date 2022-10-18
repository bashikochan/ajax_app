class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

=begin
  def new
  end
=end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end

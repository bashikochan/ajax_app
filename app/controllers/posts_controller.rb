class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

=begin
  def new
  end
=end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
  end
end

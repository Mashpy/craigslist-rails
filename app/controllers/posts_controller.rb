class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @category = Category.find(params[:category_id])
  end

  def create
    @post = Post.create(params[:post])
    redirect_to category_post_path(@post.category, @post)
  end

  def edit
    @post = Post.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    redirect_to category_post_path(@post.category, @post)
  end
end


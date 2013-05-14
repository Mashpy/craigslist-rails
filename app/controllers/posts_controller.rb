class PostsController < ApplicationController
  before_filter :get_category, only: [:new, :edit]
  before_filter :get_post, only: [:show, :edit, :update, :destroy]
  
  def get_category
    @category = Category.find(params[:category_id])
  end

  def get_post
    @post = Post.find(params[:id])
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    redirect_to category_post_path(@post.category, @post)
  end

  def edit
  end

  def update
    @post.update_attributes(params[:post])
    redirect_to category_post_path(@post.category, @post)
  end

  def destroy
    @post.destroy
    redirect_to root_url, notice: "Deleted!"
  end
end


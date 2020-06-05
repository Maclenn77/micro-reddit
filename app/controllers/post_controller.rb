class PostController < ApplicationController

def index 
  @posts = Post.all
end

def new
  @post = Post.new
end

def create 
  @post = Post.new(post_params)
  @post.save
  flash.notice = "Post #{@post.title} was successfully created!"
  redirect_to post_path(@post)
end

def destroy 
  @post = Post.find(params[:id])
  @post.destroy 
  flash.notice = "The post #{@post.title} was successfully deleted!"
  redirect_to post_path(@posts)
end

def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash.notice = "Post #{@post.title} was successfully updated!"
      redirect_to @post
    else
      render 'edit'
    end
  end

end

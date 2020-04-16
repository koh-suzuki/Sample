class PostsController < ApplicationController
    def index
      @posts = Post.all.order(created_at: :desc)
    end

    def new
    end

    def create
      @post = Post.new(content: params[:content])
      @post.save
      redirect_to posts_url
    end

    def edit
      @post = Post.find(params[:id])
    end
    
    def update
      @post = Post.find(params[:id])
      @post.content = params[:content]
      @post.save
      redirect_to posts_path
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_path
    end

    def show
      @post = Post.find(params[:id])
    end
end

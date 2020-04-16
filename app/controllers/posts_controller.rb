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
    end

    def delete
    end

    def show
      @post = Post.find(params[:id])
    end
end

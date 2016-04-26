class PostsController < ApplicationController
    
    
    def index
        @category = Category.find(params[:category_id])
        @posts = @category.posts.all
    end 
    
    def show
        @category = Category.find(params[:category_id])
        @post = @category.posts.find(params[:id])
    end 
    
    def new
        @category = Category.find(params[:category_id])
        @post = @category.posts.build 
    end 
    
    def create
        @category = Category.find(params[:category_id])
        @post = @category.posts.new(post_params)

        if @post.save 
            flash[:success] = "new post created"
        else 
            flash[:danger] = "failed to creat post"
        end 
        redirect_to category_posts_path(@category, @post)
    end 
    
    def edit
        @category = Category.find(params[:category_id])
        @post = @category.posts.find(params[:id])
    end 
    
    def update
        @category = Category.find(params[:category_id])
        @post = @category.posts.find(params[:id])
        if @post.update(post_params)
            flash[:success] = "the post was updated"
        else 
            flash[:danger] = "the post was not updated"
        end 
        redirect_to category_post_path(@category, @post)
    end 
    
    def destroy
        @category = Category.find(params[:category_id])
        @post = @category.posts.find(params[:id])
        if @post.delete
            flash[:success] = "deleted successfully"
        else
            flash[:danger] = "failed to delete"
        end 
        redirect_to category_posts_path(@category)
    end 
    
    private
    
    def post_params
        params.require(:post).permit(:title, :body, :photo, :category_id)
    end 

end

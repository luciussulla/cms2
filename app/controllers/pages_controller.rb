class PagesController < ApplicationController
    
 
    def index
        @posts = Post.where(status: 'published')
        puts "we are now index"
    end 
    
    def marketing
    end 
    
    def show
        render "pages/#{params[:page]}"
        puts "we are in show"
    end 
    
    
end
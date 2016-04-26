class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]
    
    def index 
        @categories = Category.all
    end 
    
    def show 
    end 
    
    def new
        @category = Category.new
    end 
    
    def create
        @category = Category.new(category_params)
        if @category.save   
            flash[:success] = "Category created successfully"
            redirect_to category_path(@category)
        else
            render "new"
        end 
    end 
    
    def edit
    end 
    
    def update
       
        if @category.update_attributes(category_params)
            flash[:success] = "Updated successfully"
            redirect_to category_path(@category)
        else 
            flash[:danger] = "Unsuccessful update"
            render "edit"
        end 
        
    end 
    
    def delete
    end 
    
    def destroy
    
        if @category.destroy
            flash[:success] = "Destroyed"
            redirect_to categories_path 
        else
            flash[:failure] = "Not destroyed"
        end 
        
    end 
    
    private 
    
    def set_category
        @category = Category.find(params[:id])
    end 
    
    def category_params 
        params.require(:category).permit(:name, :description)
    end 

end

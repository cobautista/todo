class CategoriesController < ApplicationController

    def index
        @categories = Category.all
      end
    
      def new
        @category = Category.new
      end
    
      def create
        @category = Category.new(category_params)
    
        if @category.valid?
          @category.save
          redirect_to home_path
    
        else
          render :new
        end
    
        # render plain: params[:post].inspect
      end
    
      def show
        @category = Category.find(params[:id])
      end
    
      def edit
        @category = Category.find(params[:id])
      end
    
      def update
        @category = Category.find(params[:id])
    
        if @category.update(category_params)
          redirect_to categories_path
    
        else
          render :new
        end
      end
    
      def destroy
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to home_path
      end
    
    
      private
      def category_params
        params.require(:category).permit(:title, :body)
        
      end



end

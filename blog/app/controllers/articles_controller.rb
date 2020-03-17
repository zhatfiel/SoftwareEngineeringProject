class ArticlesController < ApplicationController
    def new
    end
    
    def index
        @article = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def create
        @article = Article.new(article_params)
        
        @article.save
        redirect_to @article
    end
end

private
    def article_params
        params.require(:article).permit(:title, :text)
    end
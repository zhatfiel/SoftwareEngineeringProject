class ArticlesController < ApplicationController
    def new
    end
    
    def index
        @article = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(article_params)
        #byebug
        @article.user = current_user
        
        if @article.save
            #byebug
            redirect_to @article
        else
            render 'new'
        end
    end
    
    def edit
       @article = Article.find(params[:id]) 
    end
    
    def update
        @article = Article.find(params[:id]) 
        
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end
    
    def destroy
       @article = Article.find(params[:id]) 
       @article.destroy
       
       redirect_to articles_path
    end
    
    def sortA
        copy = Article.all
        temp = Array.new
        copy.each do |article| 
            temp.push(article.title)
        end
        temp = temp.sort
        temp2 = Array.new(copy.length)
        copy.each do |article| 
            temp2[temp.index(article.title)] = article
        end
        @articlesSortA = temp2
    end

    def sortZ
        copy = Article.all
        temp = Array.new
        copy.each do |article| 
            temp.push(article.title)
        end
        temp = temp.sort
        temp2 = Array.new(copy.length)
        copy.each do |article| 
            temp2[temp.index(article.title)] = article

        end
        @articlesSortZ = temp2.reverse
    end
end

private
    def article_params
        params.require(:article).permit(:title, :text)
    end
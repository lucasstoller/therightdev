class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    before_action :admin_required, only: [:new, :create, :edit, :update, :destroy]
  
    def new
      @article = Article.new
    end

    def show
    end
  
    def create
      @article = current_user.articles.build(article_params)
      if @article.save
        redirect_to @article, notice: 'Article was successfully created.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @article.update(article_params)
        redirect_to @article, notice: 'Article was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @article.destroy
      redirect_to articles_path, notice: 'Article was successfully deleted.'
    end
  
    private
  
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :body)
    end
  
    def admin_required
      redirect_to(root_path, alert: "You are not authorized to perform this action.") unless current_user.admin?
    end
  end
  
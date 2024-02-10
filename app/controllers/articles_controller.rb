class ArticlesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]
    before_action :admin_required, only: [:new, :create]
  
    def new
      @article = Article.new
    end

    def show
      @article = Article.find(params[:id])
    end
  
    def create
      @article = current_user.articles.build(article_params)
      if @article.save
        redirect_to @article, notice: 'Article was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def article_params
      params.require(:article).permit(:title, :body)
    end
  
    def admin_required
      redirect_to(root_path, alert: "You are not authorized to perform this action.") unless current_user.admin?
    end
  end
  
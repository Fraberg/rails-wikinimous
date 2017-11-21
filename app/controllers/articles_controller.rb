class ArticlesController < ApplicationController
  def index         # GET /articles
    @articles = Article.all
  end

  def show          # GET /articles/:id
    get_article
  end

  def new           # GET /articles/new
    @article = Article.new
  end

  def create        # POST /articles
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit          # GET /articles/:id/edit
    get_article
  end

  def update        # PATCH /articles/:id
    @article = get_article
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy       # DELETE /articles/:id
    @article = get_article
    @article.destroy
    redirect_to articles_path
  end

  private

  def get_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :contnet)
  end

end

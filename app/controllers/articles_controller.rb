class ArticlesController < ApplicationController
  def index         # GET /articles
    @articles = Article.all
  end

  def show          # GET /articles/:id
  end

  def new           # GET /articles/new
  end

  def create        # POST /articles
  end

  def edit          # GET /articles/:id/edit
  end

  def update        # PATCH /articles/:id
  end

  def destroy       # DELETE /articles/:id
  end
end

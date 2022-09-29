module Admin
  class ArticlesController < ApplicationController
    before_action :set_article, only: %i[show edit update destroy]

    # GET /articles
    def index
      @articles = Article.all
    end

    # GET /articles/1
    def show
    end

    # GET /articles/new
    def new
      @article = Article.new
    end

    # GET /articles/1/edit
    def edit
    end

    # POST /articles
    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to edit_admin_article_path(@article.id), notice: "Article was successfully created."
      else
        flash.now[:alert] = "Article not created"
        render :new, status: :unprocessable_entity, locals: {triggered_validation: true}
      end
    end

    # PATCH/PUT /articles/1
    def update
      if @article.update(article_params)
        redirect_to edit_admin_article_path, notice: "Article was successfully updated."
      else
        flash.now[:alert] = "Error(s) on form : this article was not updated"
        render :edit, status: :unprocessable_entity, locals: {triggered_validation: true}
      end
    end

    # DELETE /articles/1
    def destroy
      @article.destroy
      redirect_to admin_articles_url, notice: "Article was successfully destroyed."
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      res = params.require(:article).permit(:shortname, :slug, :kontent, :title, :description, :image_url, :publication_date, :author).to_h
      res[:publication_date] = Date.strptime(res[:publication_date], "%m/%d/%Y") if res[:publication_date].present?
      res
    end
  end
end

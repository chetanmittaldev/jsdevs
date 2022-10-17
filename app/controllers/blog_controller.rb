class BlogController < ApplicationController
  def index
    @articles = Article.published.order("publication_date DESC").map do |article|
      res = article.attributes.deep_symbolize_keys.slice(:slug, :publication_date, :title, :description, :author)
      res[:publication_date] = res[:publication_date].strftime("%d %b %Y") # => example : 08 Jan 2022
      res
    end.compact_blank
  end

  def show
    markdown = Redcarpet::Markdown.new(CustomRender, autolink: true, fenced_code_blocks: true, tables: true)
    article = Article.find_by!(slug: params[:id])
    article_h = article.attributes.deep_symbolize_keys.slice(:title, :kontent, :description, :publication_date, :image_url, :author)
    article_h[:parsed_content] = markdown.render(article_h[:kontent].gsub("\\k", "\n"))
    if article_h[:publication_date].present?
      article_h[:publication_date] = article_h[:publication_date]
        .to_formatted_s(:long_ordinal) # "December 4th, 2007 00:00"
        .split(" ").reverse.drop(1).reverse.join(" ") # "December 4th, 2007"
    end
    @article = article_h.except(:kontent)
    @next_article, @prev_article = article.next_prev
  end
end

class BlogController < ApplicationController
  
  def index
    @articles = Article.order('publication_date DESC').map do |article| 
      res = article.attributes.deep_symbolize_keys.slice(:slug, :publication_date, :title, :description)
      if res[:publication_date].present? && res[:publication_date].before?(Date.today)
        res[:publication_date] = res[:publication_date].strftime("%d %b %Y") # => example : 08 Jan 2022
      else
        res = {}
      end
      res
    end.compact_blank
  end

  def show
    markdown = Redcarpet::Markdown.new(CustomRender, autolink: true, fenced_code_blocks: true, tables: true)
    article = Article.find_by!(slug: params[:id])
    article_h = article.attributes.deep_symbolize_keys.slice(:title, :kontent, :description, :publication_date)
    article_h[:parsed_content] = markdown.render(article_h[:kontent].gsub("\\k","\n"))
    if article_h[:publication_date].present?
      article_h[:publication_date] = article_h[:publication_date]
                                        .to_formatted_s(:long_ordinal) # "December 4th, 2007 00:00"
                                        .split(' ').reverse.drop(1).reverse.join(' ') # "December 4th, 2007"
    end
    @article = article_h.except(:kontent)
  end

end

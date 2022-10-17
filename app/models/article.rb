class Article < ApplicationRecord
  validates :slug, presence: true, uniqueness: true

  validates_format_of :slug, with: /\A[-_A-Za-z0-9]+\z/, message: "invalid : alphanumeric characters only"

  validates :title, presence: true, uniqueness: true, length: {minimum: 5, maximum: 120}

  validates :image_url, allow_blank: true, format: {with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: "is not a valid URL"}

  scope :published, -> { where.not(publication_date: nil).where("publication_date <= ?", Date.today) }

  def published?
    !publication_date.nil? && publication_date <= Date.today
  end

  def next_prev
    next_article = nil
    prev_article = nil

    sorted_articles = Rails.cache.fetch("all_articles", expires_in: 2.hour) {
      Article.published.pluck(:publication_date, :id, :title, :slug).sort_by { |ary| ary[0] }
    }

    current_index = sorted_articles.index { |x| x[1] == id }
    next_index = current_index + 1
    prev_index = current_index - 1
    total_length = sorted_articles.size - 1

    if next_index <= total_length
      next_article = _rebuild_article(sorted_articles[next_index])
    end

    if prev_index >= 0
      prev_article = _rebuild_article(sorted_articles[prev_index])
    end

    [next_article, prev_article]
  end

  def _rebuild_article(article_as_array)
    res = {}
    res[:title] = article_as_array[2]
    res[:slug] = article_as_array[3]
    res
  end
end

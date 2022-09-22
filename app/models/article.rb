class Article < ApplicationRecord
  validates :slug, presence: true, uniqueness: true

  validates_format_of :slug, with: /\A[-_A-Za-z0-9]+\z/, message: "invalid : alphanumeric characters only"

  validates :title, presence: true, uniqueness: true, length: {minimum: 5, maximum: 120}

  validates :image_url, allow_blank: true, format: {with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: "is not a valid URL"}

  scope :published, -> { where.not(publication_date: nil).where("publication_date <= ?", Date.today) }

  def published?
    !publication_date.nil? && publication_date <= Date.today
  end
end

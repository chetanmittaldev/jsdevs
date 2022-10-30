module Developers
  class CardComponent < ApplicationComponent
    with_collection_parameter :developer

    attr_reader :developer

    def initialize(developer:, featured: false, is_admin: false)
      @developer = developer
      @featured = featured
      @is_admin = is_admin
    end

    def hero
      @developer.hero
    end

    def bio
      @developer.bio
    end

    def featured?
      !!@featured
    end

    def admin?
      @is_admin
    end
  end
end

class OpenGraphTagsComponent < ApplicationComponent
  attr_reader :turbo_native_title

  def initialize(title: nil, turbo_native_title: nil, description: nil, image: nil, url: nil, atype: nil)
    @title = title
    @turbo_native_title = turbo_native_title
    @description = description
    @image = image
    @url = url
    @atype = atype
  end

  def title
    if turbo_native_title.present? && helpers.turbo_native_app?
      turbo_native_title
    elsif @title.present? && helpers.turbo_native_app?
      @title
    elsif @title.present?
      "#{@title} · jsdevs"
    else
      "jsdevs"
    end
  end

  def description
    @description || t("home.show.title_og")
  end

  def atype
    @atype || "website"
  end

  def url
    @url || root_url
  end

  def image
    @image || helpers.image_url("opengraph/default.png")
  end

  def twitter_card
    "summary_large_image"
  end

  def twitter
    "@shinokouda"
  end
end

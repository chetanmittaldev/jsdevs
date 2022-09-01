require "test_helper"

class HasSocialProfilesTest < ActiveSupport::TestCase
  class Model
    include ActiveModel

    attr_accessor :github, :twitter, :linkedin

    def save
      normalize_github
      normalize_twitter
      normalize_linkedin
    end

    def self.before_save(method, options)
    end

    # Must be after .before_save is defined.
    include HasSocialProfiles
  end

  def setup
    @model = Model.new
  end

  test "normalizes GitHub handle" do
    @model.github = "bdavidxyz"
    save_and_assert_normalized_handle(:github)

    @model.github = "http://github.com/bdavidxyz"
    save_and_assert_normalized_handle(:github)

    @model.github = "https://github.com/bdavidxyz"
    save_and_assert_normalized_handle(:github)

    @model.github = "http://www.github.com/bdavidxyz"
    save_and_assert_normalized_handle(:github)

    @model.github = "https://www.github.com/bdavidxyz"
    save_and_assert_normalized_handle(:github)
  end

  test "normalizes Twitter handle" do
    @model.twitter = "bdavidxyz"
    save_and_assert_normalized_handle(:twitter)

    @model.twitter = "http://twitter.com/bdavidxyz"
    save_and_assert_normalized_handle(:twitter)

    @model.twitter = "https://twitter.com/bdavidxyz"
    save_and_assert_normalized_handle(:twitter)

    @model.twitter = "http://www.twitter.com/bdavidxyz"
    save_and_assert_normalized_handle(:twitter)

    @model.twitter = "https://www.twitter.com/bdavidxyz"
    save_and_assert_normalized_handle(:twitter)
  end

  test "normalizes LinkedIn handle" do
    @model.linkedin = "bdavidxyz"
    save_and_assert_normalized_handle(:linkedin)

    @model.linkedin = "http://linkedin.com/in/bdavidxyz"
    save_and_assert_normalized_handle(:linkedin)

    @model.linkedin = "https://linkedin.com/in/bdavidxyz"
    save_and_assert_normalized_handle(:linkedin)

    @model.linkedin = "http://www.linkedin.com/in/bdavidxyz"
    save_and_assert_normalized_handle(:linkedin)

    @model.linkedin = "https://www.linkedin.com/in/bdavidxyz"
    save_and_assert_normalized_handle(:linkedin)
  end

  def save_and_assert_normalized_handle(platform)
    @model.save
    assert_equal @model.send(platform), "bdavidxyz"
  end
end

require "test_helper"

class AboutTest < ActionDispatch::IntegrationTest
  test "renders both sections of markdown" do
    get about_path

    assert_select "h1", "About"
  end

  test "renders translated versions of the markdown" do
    get about_path(locale: "fr")

    assert_select "h1", "À propos"
  end

  test "defaults to English translation" do    
    get about_path(locale: "es")

    assert_select "h1", "About"
  end
end

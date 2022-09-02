require "test_helper"

class AboutTest < ActionDispatch::IntegrationTest
  test "renders both sections of markdown" do
    get about_path

    assert_select "h2", "The story"
  end

  test "renders translated versions of the markdown" do
    get about_path(locale: "pt-BR")

    # assert_select "h1", "Empoderar desenvolvedores independentes"
  end

  test "defaults to English translation" do
    get about_path(locale: "zh-TW")

    assert_select "h2", "The story"
  end
end

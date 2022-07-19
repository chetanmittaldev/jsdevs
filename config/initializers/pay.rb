Pay.setup do |config|
  config.business_name = "lovindevs"
  config.business_address = "2625 SE Market St, Portland, OR 97214"
  config.application_name = "lovindevs"
  config.support_email = Rails.configuration.emails.support_mailbox!

  config.default_product_name = "lovindevs"
  config.default_plan_name = "Business subscription"

  config.automount_routes = true
  config.routes_path = "/pay"
end

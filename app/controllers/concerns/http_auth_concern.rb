module HttpAuthConcern  
    extend ActiveSupport::Concern
    included do
        before_action :http_authenticate
    end
    def http_authenticate
        return true unless Rails.env == 'production' && "herokuapp".in?(request&.original_url&.to_s)
        authenticate_or_request_with_http_basic do |username, password|
            username == "#{ENV['HTTP_BASIC_USERNAME']}42" && "#{ENV['HTTP_BASIC_PASSWORD']}42"
        end
    end
end

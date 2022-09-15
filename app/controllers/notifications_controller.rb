class NotificationsController < ApplicationController
  include Pagy::Backend

  before_action :authenticate_user!

  def index
    @pagy, @notifications = pagy(current_user.notifications.unread.newest_first)
    @read_notifications = current_user.notifications.read
  end

  def show
    notification = current_user.notifications.find(params[:id])
    notification.mark_as_read!
    actual_locale = params[:locale] || "en"

    if (url = notification.to_notification.url)
      redirect_to "#{url}?locale=#{actual_locale}"
    else
      redirect_to notifications_path(locale: actual_locale), notice: t(".notice")
    end
  end
end

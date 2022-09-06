class UsersController < Devise::RegistrationsController
  invisible_captcha only: :create

  def destroy
    current_user_id = current_user.id
    sign_out(current_user)
    User.find(current_user_id).destroy
    redirect_to root_path, status: :see_other, notice: "Goodbye!"
  end
end

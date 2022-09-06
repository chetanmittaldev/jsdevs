class UsersController < Devise::RegistrationsController
  invisible_captcha only: :create

  def destroy
    p "blablablablabla---------------------------------------"
    p current_user
    current_user_id = current_user.id
    sign_out(current_user)
    redirect_to root_path, notice: "Goodbye!"
  end

end

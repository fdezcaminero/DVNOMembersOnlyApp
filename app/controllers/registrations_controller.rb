class RegistrationsController < Devise::RegistrationsController
    private
    def sign_up_params
        params.require(:member).permit(:username, :email, :password, :password_confirmation)
    end

    def account_update_params
        params.require(:member).permit(:username, :email, :password_confirmation, :current_password)
    end
end
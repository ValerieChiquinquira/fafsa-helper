class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :dob, :first_name, :last_name, :username, :sex, :phone, :address, :city, :state, :zip, :student)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :dob, :first_name, :last_name, :username, :sex, :phone, :address, :city, :state, :zip)}
         end
    
end


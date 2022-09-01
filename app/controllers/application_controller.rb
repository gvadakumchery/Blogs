class ApplicationController < ActionController::Base
  # def create
  #   binding.pry
  #   # Your custom code here. Make sure you copy devise's functionality
  # end

  # private

  # # Notice the name of the method
  # def sign_up_params
  #   params.require(:user).permit(:f_name,:l_name,:phone_num, :email, :password, :password_confirmation)
  # end

  def after_sign_in_path_for(resource)
    root_path
  end

  private

  # def sign_up_params
  #   params.require(:user).permit(:f_name, :l_name, :phone_num, :email, :password, :password_confirmation)
  # end


  # def sign_up_params
  #   binding.pry
  #   #params.require(:user).permit(:f_name,:l_name,:phone_num, :email, :password, :password_confirmation)
  # end
end

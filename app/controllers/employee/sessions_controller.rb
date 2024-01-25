# frozen_string_literal: true

class Employee::SessionsController < Devise::SessionsController
  before_action :employee_state, only: [:create]
  def after_sign_in_path_for(resource)
      daily_reports_path
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

 protected
 # If you have extra params to permit, append them to the sanitizer.

  def employee_state
    @employee = Employee.find_by(user_code: params[:employee][:user_code])
    return if @employee.nil?
    return unless @employee.valid_password?(params[:employee][:password])
    if @employee.is_active == "無効"
      redirect_to new_employee_session_path
    end
  end


  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:user_code])
  end
end
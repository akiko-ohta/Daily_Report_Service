# frozen_string_literal: true

class Employer::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]
  def after_sign_in_path_for(resource)
      employer_daily_reports_path
  end

  def after_sign_out_path_for(resource)
      new_employer_session_path
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
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end
end

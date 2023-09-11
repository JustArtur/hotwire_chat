class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :confirm_account

  def set_flash_message(type, message)
      flash.now[type] = message
      render_flash
  end

  protected
  def render_flash
    render turbo_stream: turbo_stream.append("flash", partial: "layouts/flash")
  end

  def confirm_account
    redirect_to new_profile_path unless current_user.confirmed_account
  end
end

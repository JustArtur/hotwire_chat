class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def set_flash_message(type, message)
      flash.now[type] = message
      render_flash
  end

  protected
  def render_flash
    render turbo_stream: turbo_stream.append("flash", partial: "layouts/flash")
  end
end

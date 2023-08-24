class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def render_flash
    render turbo_stream: turbo_stream.append("flash", partial: "layouts/flash")
  end
end

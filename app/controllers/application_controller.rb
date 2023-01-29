class ApplicationController < ActionController::Base
  def render_flash
    render turbo_stream: turbo_stream.append("flash", partial: "layouts/flash")
  end
end

module Users
  class SessionsController < Devise::SessionsController
    layout "devise"
    def initialize 
      super
    end
  end
end
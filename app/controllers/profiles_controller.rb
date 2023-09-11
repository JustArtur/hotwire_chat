class ProfilesController < ApplicationController
    layout "devise", only: [:new]

    skip_before_action :confirm_account, only: %i[new create]

    def new
    end

    def create
        profile = current_user.build_profile(profile_params)
        begin 
            profile.save!
        rescue Exception => e
            if e.is_a? SQLite3::ConstraintException
                set_flash_message :alert, 'Please enter all data'
            end
        else
            current_user.update(confirmed_account: true)
            redirect_to rooms_path
        end
    end

    def show
        @profile = current_user.profile
    end

    private
    def profile_params
        params.require(:profile).permit(:first_name, :second_name, :birthday)
    end
end

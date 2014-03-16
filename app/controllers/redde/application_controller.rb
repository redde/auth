class Redde::ApplicationController < ActionController::Base
  private

    def authenticate_user!
      authenticate_redde_user!
    end
end
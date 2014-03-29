class UsersController < ApplicationController
def show
    @user = User.find_by_profile_url(params[:profile_url])
  end
end

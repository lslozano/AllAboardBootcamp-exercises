class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:create]

    def index
        render plain: "Index of Users"
    end

    def new
        @user = User.new
    end

    def create
        user_name = params[:user][:name]
        new_user = User.create(name: user_name)
        session[:user_id] = new_user.id
        redirect_to :comments
    end
end

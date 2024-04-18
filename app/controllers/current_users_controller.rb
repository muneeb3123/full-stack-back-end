    class CurrentUsersController < ApplicationController
        def index
            @users = User.all
        end
    end

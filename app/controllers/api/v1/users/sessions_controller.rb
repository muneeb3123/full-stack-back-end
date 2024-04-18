  # frozen_string_literal: true

  class Api::V1::Users::SessionsController < Devise::SessionsController
    skip_before_action :verify_authenticity_token
    
    def isUser
      if current_user
        render json: {
          user: current_user,
          status: :ok,
          message: 'You are logged in'
        }
      else
        render json: {
          errors: ['User not authenticated']
          }, status: :unprocessable_entity
        end
      end
      
      def create
        user = User.find_by(email: user_params[:email])
      
        if user && user.valid_password?(user_params[:password])
          sign_in(user)
          render json: { user: user, message: 'Signed in successfully' }
        else
          render json: { errors: ['Invalid email or password'] }, status: :unauthorized
        end
      end
      
      private
      
      def user_params
        params.require(:user).permit(:email, :password)
      end
      
    end
  
class Users::RegistrationsController < Devise::RegistrationsController
  include RackSessionFix
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: { status: 200, user: resource, message: 'User created successfully' }
    else
      render json: { status: 401, errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
  end
end

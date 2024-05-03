class ReservedMailer < ApplicationMailer

  def car_reserved
    @greeting = "Hi"
    @reservation = params[:reservation]
    @user = params[:user]
    @car = params[:car]

    # mail( to: email_address_with_name(@user.name, @user.email), subject: "Car Reserved" )
    mail( to: @user.email, subject: "Car Reserved" )

  end
end

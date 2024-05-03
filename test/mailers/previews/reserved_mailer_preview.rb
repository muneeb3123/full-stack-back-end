# Preview all emails at http://localhost:3000/rails/mailers/reserved_mailer
class ReservedMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/reserved_mailer/car_reserved
  def car_reserved
    ReservedMailer.with(user: User.first, reservation: Reservation.first, car:Car.first.name ).car_reserved.deliver_now
  end

end

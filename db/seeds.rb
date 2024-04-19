# Seed cars
cars = [
    ['Mercedes', '
      Mercedes is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 11, 21, 71, '31 months', 4.1, 'https://i.imgur.com/h9Mo1AZ.png', 'color1'],
    ['McLaren P1', '
      McLaren P1 is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 12, 22, 72, '32 months', 4.2, 'https://i.imgur.com/o1OMj06.png', 'color2'],
    ['Bugatti Veyron P1.6', '
      Bugatti Veyron P1.6 is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 13, 23, 73, '33 months', 4.3, 'https://i.imgur.com/ahilqIn.png', 'color3'],
    ['Ferrari 599 SA Aperta', '
      Ferrari 599 SA Aperta is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 14, 24, 74, '34 months', 4.4, 'https://i.imgur.com/L9XaS2r.png', 'color4']
  ]
  
  cars.each do |car|
    Car.create(name: car[0], description: car[1], finance_fee: car[2], option_to_purchase_fee: car[3], total_amount_payable: car[4], duration: car[5], apr: car[6], image: car[7], color: car[8])
  end
  
  # Create Admin user
  admin = User.create(name: "muneeb", email: "muneeb@gmail.com", password: "123456", password_confirmation: "123456", role: "admin")
  
  # Create reservations for the admin user
#   reservation1 = Reservation.create(user_id: admin.id, car_id: Car.find_by(name: 'Mercedes').id, date: '2023-09-22', city: 'Islamabad')
#   reservation2 = Reservation.create(user_id: admin.id, car_id: Car.find_by(name: 'McLaren P1').id, date: '2023-09-23', city: 'Karachi')
  
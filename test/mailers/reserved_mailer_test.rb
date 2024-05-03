require "test_helper"

class ReservedMailerTest < ActionMailer::TestCase
  test "car_reserved" do
    mail = ReservedMailer.car_reserved
    assert_equal "Car reserved", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

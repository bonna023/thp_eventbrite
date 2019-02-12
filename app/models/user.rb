class User < ApplicationRecord
	after_create :welcome_send

	has_many :attendances, foreign_key: 'attendee_id'
	has_many :events, foreign_key: 'admin_id'

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end

class Attendance < ApplicationRecord

	belongs_to :user
	belongs_to :event

	after_create :welcome_attendance

	def welcome_attendance
    UserMailer.welcome_attendance_email(self.user).deliver_now
  end

end

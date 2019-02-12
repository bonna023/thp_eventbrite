class Attendance < ApplicationRecord
	
	after_create :welcome_attendance

	belongs_to :attendee, class_name: 'User'
	belongs_to :event

	def welcome_attendance
    UserMailer.welcome_attendance_email(self).deliver_now
  end

end

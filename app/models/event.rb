class Event < ApplicationRecord

	belongs_to :user
	has_many :attendances
	has_many :users, through: :attendances

	validates_each :start_date do |record, attr, value|
    record.errors.add(attr, 'must exist') if value == nil
    record.errors.add(attr, 'invalid date') if value - DateTime.now < 0
  end

	validates :title, presence: true, length: { in: 5..140 }
	validates :description, presence: true, length: { in: 20..1000 }
	validates :price, presence: true, inclusion: { in: 0..1000 }
	validates :location, presence: true
	
	validates_each :duration do |record, attr, value|
    record.errors.add(attr, 'must modulo 5') if value % 5 != 0
    record.errors.add(attr, 'must exist') if value == nil
  end




end

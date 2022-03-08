class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: { in: 40..200 }
  validates :store_id, presence:true

  after_create do
    self.password = rand.to_s[2..9] if password.blank?
    puts self.password
  end 

end

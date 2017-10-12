class Contact < ApplicationRecord
  attr_accessor :first_name, :last_name, :phone_number, :email, :descrption
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end

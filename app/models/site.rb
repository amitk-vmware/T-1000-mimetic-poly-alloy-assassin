class Site < ApplicationRecord

  validates :name, :email, :timezone, presence: true
  
end

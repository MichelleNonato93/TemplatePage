class Contact < ActiveRecord::Base
  validates :name, :email, :organization, :role, presence: true
end

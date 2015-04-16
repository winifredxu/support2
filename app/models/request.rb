class Request < ActiveRecord::Base

  validates :name, :email, presence: :true
  validates :done, default: false, null: false
  
end

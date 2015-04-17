class Dept < ActiveRecord::Base

  has_many :requests, dependent: :nullify

  validates :name, presence: true, length: { minimum: 3 }

end

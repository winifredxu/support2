class Request < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :dept
  
  validates :name, :email, presence: :true
  validates :done, default: false, null: false
  
  before_create :set_boolean

  private

  def set_boolean
   self.done = false
  end
  
end

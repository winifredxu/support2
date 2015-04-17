class Request < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :dept
  
  validates :name, :email, presence: :true
  validates :done, default: false, null: false
  
  before_create :set_boolean

  def self.req_lists_order
    Request.all.order("done ASC")
  end

  private

  def set_boolean
   self.done = false
  end
  
end

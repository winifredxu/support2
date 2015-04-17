class Request < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :dept
  
  validates :name, :email, presence: :true
  validates :done, default: false, null: false
  
  before_create :set_blah

  # # set per_page globally
  # WillPaginate.per_page = 5

  def self.search(query)
    where("name LIKE ? OR email LIKE ? OR msg LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
  end

  def self.req_lists_order
    Request.all.order("done ASC")
  end

  private

  def set_blah
    if done.nil? 
      self.done = false
    end
  end
  
end

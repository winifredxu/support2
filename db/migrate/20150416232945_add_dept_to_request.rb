class AddDeptToRequest < ActiveRecord::Migration
  def change
    add_reference :requests, :dept, index: true, foreign_key: true
  end
end

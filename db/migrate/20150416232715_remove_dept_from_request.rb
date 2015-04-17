class RemoveDeptFromRequest < ActiveRecord::Migration
  def change
    remove_column :requests, :dept, :string
  end
end

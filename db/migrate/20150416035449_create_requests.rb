class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.text :msg
      t.boolean :done, default: false

      t.timestamps null: false
    end
  end
end

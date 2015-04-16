class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :dept
      t.text :msg
      t.boolean :done

      t.timestamps null: false
    end
  end
end

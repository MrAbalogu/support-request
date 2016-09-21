class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :title
      t.string :username
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end

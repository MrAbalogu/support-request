class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :request, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

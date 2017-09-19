class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :category
      t.string :cell_phone
      t.boolean :available
      t.string :company
      t.string :address
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end

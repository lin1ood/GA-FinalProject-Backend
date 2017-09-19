class CreateLedgers < ActiveRecord::Migration[5.1]
  def change
    create_table :ledgers do |t|
      t.integer :comment_id
      t.integer :provider_id

      t.timestamps
    end
  end
end

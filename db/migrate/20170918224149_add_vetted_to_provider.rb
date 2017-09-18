class AddVettedToProvider < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :vetted, :boolean
  end
end

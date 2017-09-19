class AddProviderIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :provider_id, :integer
  end
end

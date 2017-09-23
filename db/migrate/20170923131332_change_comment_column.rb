class ChangeCommentColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :comment, :review
  end
end

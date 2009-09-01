class ChangeCommentToPolymorthpicModel < ActiveRecord::Migration
  def self.up
    remove_column :comments, :post_id
    add_column :comments, :commentable_id, :integer
    add_column :comments, :commentable_type, :string
  end

  def self.down
    remove_column :comments, :commentable_type
    remove_column :comments, :commentable_id
    add_column :comments, :post_id, :integer
  end
end

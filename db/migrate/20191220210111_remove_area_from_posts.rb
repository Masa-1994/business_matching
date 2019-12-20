class RemoveAreaFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :area, :integer
  end
end

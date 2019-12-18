class RemoveTransactionFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :transaction, :string
  end
end

class AddBusinessToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :business, :string
  end
end

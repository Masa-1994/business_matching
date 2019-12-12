class AddCompanyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name,            :string,  null:false
    add_column :users, :indutry_type,    :string,  null:false
    add_column :users, :foundation_date, :date,    null:false
    add_column :users, :capital,         :integer, null:false
    add_column :users, :employee_number, :integer, null:false
    add_column :users, :prefectures_id,  :integer, null:false
    add_column :users, :address,         :string,  null:false
    add_column :users, :phone_number,    :string,  null: false,  limit: 11,  unique: true
  end
end

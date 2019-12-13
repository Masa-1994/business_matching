class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references  :user,        null: false,  foreign_key: true #ユーザーID
      t.string      :title,       null: false                     #タイトル
      t.text        :text,        null: false                     #テキスト
      t.string      :transaction, null: false                     #取引
      t.integer     :area,        null: false                     #希望地域
      t.string      :image,       null: false                     #画像
      t.timestamps
    end
  end
end

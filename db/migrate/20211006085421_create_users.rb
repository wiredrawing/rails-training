class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|

      # ユーザー名
      t.string(:username, {
        :limit => 512
      })
      # ログインIDとする
      t.string(:email, {
        :limit => 512
      })
      # ユーザ紹介
      t.text(:description, {
        limit: 4096
      })
      # 所属先
      t.bigint(:section);
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :given_name;
      t.string :family_name
      t.string :address
      t.date :birthday
      t.text :comment
      t.string :email
      t.string :token
      t.string :password_digest
      # tinyintで設定
      t.integer :gender, {
        :limit => 1,
      }
      t.timestamps
    end
  end
end

class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|

      # いいね送信元
      t.bigint(:source_user_id)
      # いいね送信先
      t.bigint(:destination_user_id)
      # いいね理由
      t.string(:reason, {
        :limit => 256,
      })
      # ついでの要望
      t.string(:request, {
        :limit => 1024
      })
      t.timestamps
    end
  end
end

class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      # アップしたユーザー
      t.bigint :user_id
      # アップロード後の画像ファイル名
      t.string :filename
      # 画像の拡張子
      t.string :extension
      # 画像の表示状態
      t.integer :is_displayed, {
        :limit => 1
      }
      # 画像に対してのコメント
      t.text :comment
      t.integer :image_type, {
        :limit => 2
      }
      t.timestamps
    end
  end
end

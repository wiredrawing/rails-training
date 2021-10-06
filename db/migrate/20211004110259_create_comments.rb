



class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      # コメント内容
      t.text "message"
      # コメントの入力者
      t.bigint("written_by");
      t.bigint("board_id");
      t.timestamps
    end
  end
end

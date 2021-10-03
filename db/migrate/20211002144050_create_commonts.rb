class CreateCommonts < ActiveRecord::Migration[6.1]
  def change
    create_table :commonts do |t|
      t.text :message;
      t.timestamps

    end
  end
end

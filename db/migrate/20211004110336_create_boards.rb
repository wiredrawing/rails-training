class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string(:board_title, :limit => 512)
      t.text(:board_description, :limit => 4096)
      t.bigint(:written_by)
      t.timestamps
    end
  end
end

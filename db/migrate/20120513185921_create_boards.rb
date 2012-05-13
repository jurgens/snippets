class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer       :owner_id,    null: false
      t.string        :name,        null: false
      t.timestamps
    end

    add_index :boards, :owner_id
  end
end

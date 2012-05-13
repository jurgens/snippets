class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :board
      t.belongs_to :user
      t.timestamps
    end

    add_index :memberships, [:board_id, :user_id]
  end
end

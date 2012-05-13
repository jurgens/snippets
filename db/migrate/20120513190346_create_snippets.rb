class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.belongs_to    :user,  null: false
      t.belongs_to    :board, null: false
      t.text          :body
      t.timestamps
    end
  end
end

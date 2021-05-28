class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :prototype, foreign_key: true
      t.text :text
      t.timestamps
    end
      add_index :comments, [:user_id, :created_at]
      add_index :comments, [:prototype_id, :created_at]
  end
end

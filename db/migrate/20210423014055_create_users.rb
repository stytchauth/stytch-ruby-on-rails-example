class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :stytch_user_id, null: false
      t.string :name

      t.timestamps
    end
    add_index :users, :stytch_user_id, unique: true
  end
end

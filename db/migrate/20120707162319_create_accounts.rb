class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :web_address
      t.string :user_name
      t.string :password_digest

      t.timestamps
    end
  end
end

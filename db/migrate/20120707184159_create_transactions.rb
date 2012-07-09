class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.integer :check
      t.string :description
      t.decimal :amount
      t.string :category
      t.text :note

      t.timestamps
    end
  end
end

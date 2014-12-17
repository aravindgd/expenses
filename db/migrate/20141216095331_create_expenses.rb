class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :product_name
      t.date :date
      t.integer :amount

      t.timestamps
    end
  end
end

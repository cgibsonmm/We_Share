class CreateItemLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :item_loans do |t|
      t.integer :item_id
      t.integer :from_user
      t.integer :to_user
      t.boolean :owner_confirmed_loan, default: false
      t.boolean :owner_confirmed_loan_returned, default: nil
      t.datetime :duration
      t.datetime :start_date
      t.datetime :checkedout_at
      t.datetime :due_at
      t.datetime :returned_at

      t.timestamps
    end
  end
end

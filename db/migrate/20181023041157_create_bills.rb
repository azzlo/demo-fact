class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :file
      t.date :do_payment_at
      t.text :details
      t.date :paid_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

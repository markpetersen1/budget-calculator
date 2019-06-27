class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :title
      t.numeric :amount_per_month

      t.timestamps
    end
  end
end

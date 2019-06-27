class CreateDeposits < ActiveRecord::Migration[5.2]
  def change
    create_table :deposits do |t|
      t.string :title
      t.numeric :amount_per_month

      t.timestamps
    end
  end
end

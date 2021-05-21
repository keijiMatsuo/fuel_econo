class CreateEconomies < ActiveRecord::Migration[6.0]
  def change
    create_table :economies do |t|

      t.integer    :mileage,      null: false
      t.integer    :amount,       null: false
      t.references :user,         null: false, foreign_key: true
      t.timestamps

    end
  end
end

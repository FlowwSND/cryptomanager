class CreateCryptos < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptos do |t|
      t.string :abbreviation
      t.string :name
      t.decimal :quantity
      t.date :date
      t.decimal :value

      t.timestamps
    end
  end
end

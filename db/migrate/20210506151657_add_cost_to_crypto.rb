class AddCostToCrypto < ActiveRecord::Migration[6.1]
  def change
    add_column :cryptos, :cost, :float
  end
end

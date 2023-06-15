class CreateInvestmentPortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :investment_portfolios do |t|
      t.decimal :potential_investments
      t.decimal :potential_float_price
      t.integer :shares_for_buying
      t.decimal :investments
      t.decimal :float_price
      t.integer :purchased_shares
      t.references :telegram_profile, index: true

      t.timestamps
    end
  end
end

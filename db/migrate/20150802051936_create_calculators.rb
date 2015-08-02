class CreateCalculators < ActiveRecord::Migration
  def change
    create_table :calculators do |t|

      t.integer :age
      t.integer :initial_contribution
      t.integer :yearly_contribution
      t.integer :annual_interest_rate

      t.timestamps null: false
    end
  end
end

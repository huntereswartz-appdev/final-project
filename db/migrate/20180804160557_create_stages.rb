class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.integer :user_id
      t.string :name
      t.integer :number
      t.integer :number_of_deals
      t.integer :total_days
      t.integer :active_days
      t.float :probability_deal_closes

      t.timestamps
    end
  end
end

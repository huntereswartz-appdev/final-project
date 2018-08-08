class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :sales_goal
      t.string :sales_goal_period
      t.date :period_end
      t.integer :average_deal_size
      t.integer :period_closed_deal_value
      t.integer :pipeline_stages

      t.timestamps
    end
  end
end

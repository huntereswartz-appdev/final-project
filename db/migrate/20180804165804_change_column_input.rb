class ChangeColumnInput < ActiveRecord::Migration[5.1]
  def change
    change_column :stages, :total_days, :float
    change_column :stages, :active_days, :float
    end
end

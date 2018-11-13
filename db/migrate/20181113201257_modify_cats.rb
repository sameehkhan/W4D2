class ModifyCats < ActiveRecord::Migration[5.2]
  def change
    remove_column :cats, :timestamps
    add_column :timestamps, null: false
  end
end

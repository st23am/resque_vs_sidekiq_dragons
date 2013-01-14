class RemoveStatusFromVillager < ActiveRecord::Migration
  def change
    remove_column :villagers, :status
  end
end

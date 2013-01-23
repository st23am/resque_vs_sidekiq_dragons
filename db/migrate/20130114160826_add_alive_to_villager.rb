class AddAliveToVillager < ActiveRecord::Migration
  def up
    add_column :villagers, :alive, :boolean, default: true
    Villager.all.each { |villager| villager.update_attribute(:alive, true) }
  end

  def down
    remove_column :villagers, :alive
  end
end

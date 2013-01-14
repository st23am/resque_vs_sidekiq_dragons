class AddAliveToVillager < ActiveRecord::Migration
  def change
    add_column :villagers, :alive, :boolean, defult: 1
  end
end

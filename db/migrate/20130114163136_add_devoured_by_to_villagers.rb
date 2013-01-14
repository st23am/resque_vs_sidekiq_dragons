class AddDevouredByToVillagers < ActiveRecord::Migration
  def change
    add_column :villagers, :devoured_by, :string
  end
end

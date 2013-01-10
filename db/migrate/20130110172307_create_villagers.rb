class CreateVillagers < ActiveRecord::Migration
  def change
    create_table :villagers do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end

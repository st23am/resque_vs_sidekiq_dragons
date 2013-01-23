class Villager < ActiveRecord::Base
  attr_accessible :name, :alive, :devoured_by

  def self.repopulate
    devoured_villagers.each do |villager|
      villager.update_attributes(alive: true, devoured_by: nil)
    end
  end

  def self.living_villagers
    where(alive: true)
  end

  def self.devoured_villagers
    where(alive: false)
  end

  def self.devoured_by(dragon_name)
    where(devoured_by: dragon_name)
  end
end

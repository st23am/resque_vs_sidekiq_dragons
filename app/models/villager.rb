class Villager < ActiveRecord::Base
  attr_accessible :name, :alive, :devoured_by

  def self.repopulate
    all.each { |villager| villager.update_attributes(alive: true, devoured_by: nil) }
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

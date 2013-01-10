class Villager < ActiveRecord::Base
  attr_accessible :name, :status

  def self.repopulate
    all.each { |villager| villager.update_attribute(:status, 'Alive') }
  end
end

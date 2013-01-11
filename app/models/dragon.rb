class Dragon
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def devour_the_villagers
    Villager.all.each do |villager|
      villager.status = "#{villager.name} Devoured by #{name}"
      villager.save!
    end
  end
end

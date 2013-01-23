class Dragon
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def devour_a_villager
    count = Villager.living_villagers.count
    if count > 0
      targeted_villager = rand(count)
      villager = Villager.find(targeted_villager)
      if villager
        villager.alive = false
        villager.devoured_by = @name
        villager.save!
        puts "YUM YUM #{@name} ate #{villager.name}"
      end
    end
  end
end

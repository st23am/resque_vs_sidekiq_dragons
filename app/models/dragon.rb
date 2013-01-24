class Dragon
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def devour_a_villager
    eat_them(Villager.a_random_villager)
  end

  private

  def eat_them(villager)
    if villager
      villager.alive = false
      villager.devoured_by = @name
      villager.save!
      puts "YUM YUM #{@name} ate #{villager.name}"
    else
      puts "#{@name} is sad cause there is no one to eat"
    end
  end
end

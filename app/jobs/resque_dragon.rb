class ResqueDragon
  @queue = :dragon_queue

  def self.perform
    dragon = Dragon.new("Resque")
    dragon.devour_a_villager
  end
end

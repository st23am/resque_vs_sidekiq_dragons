class SidekiqDragon
  include Sidekiq::Worker

  def perform
    dragon = Dragon.new("Sidekiq")
    dragon.devour_a_villager
  end
end

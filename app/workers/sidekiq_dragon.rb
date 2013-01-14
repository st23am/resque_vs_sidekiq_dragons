class SidekiqDragon
  include Sidekiq::Worker
  require 'benchmark'

  def perform
    dragon = Dragon.new("Sidekiq")
    dragon.devour_the_villager
  end
end

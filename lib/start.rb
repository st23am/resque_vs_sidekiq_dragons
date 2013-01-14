require 'app/models/villager'
require 'app/workers/sidekiq_dragon'
require 'app/jobs/resque_dragon'

villager_count = Villager.living_villagers.count

if Villager.devoured_villagers.any?
  Villager.repopulate
end

vilager_count.times do
  Resque.enqueue(ResqueDragon)
end

villager_count.times do
  SidekiqDragon.perform_async
end

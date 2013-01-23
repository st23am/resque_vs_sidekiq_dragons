desc "release the dragons on the villagers"
task :release_the_kraken => :environment do
  villager_count = Villager.living_villagers.count

  if Villager.devoured_villagers.any?
    Villager.repopulate
  end

  villager_count.times do
    Resque.enqueue(ResqueDragon)
  end

  villager_count.times do
    SidekiqDragon.perform_async
  end
end


desc "release the dragons on the villagers"
task :release_the_kraken => :environment do

  if Villager.devoured_villagers.any?
    Villager.repopulate
  end
  Villager.living_villagers.each do |villager|
    Resque.enqueue(ResqueDragon)
    SidekiqDragon.perform_async
  end
  puts "Village destroyed"
  puts "#{Villager.devoured_by("SideKiq").count} Villagers devoured by Sidekiq"
  puts "#{Villager.devoured_by("Resque").count}  Villagers devoured by Resque"
end

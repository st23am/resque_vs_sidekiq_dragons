
villager_count = Villager.liviing_villagers.count

vilager_count.times do
  Resque.enqueue(ResqueDragon)
end

villager_count.times do
  SidekiqDragon.perform_async
end

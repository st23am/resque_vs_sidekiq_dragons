class ResqueDragon
  @queue = :dragon_queue

  def self.perform
    Benchmark.bm(7) do |x|
      dragon = Dragon.new(name: "Resque")
      x.report(:devour_time) { dragon.devour_the_villagers }
    end
  end
end

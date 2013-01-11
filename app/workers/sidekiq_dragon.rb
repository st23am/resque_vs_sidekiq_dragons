class SidekiqDragon
  include Sidekiq::Worker
  require 'benchmark'

  def perform
    Benchmark.bm(7) do |x|
      dragon = Dragon.new(name: "Sidekiq")
      x.report(:devour_time) { dragon.devour_the_villagers }
    end
  end
end

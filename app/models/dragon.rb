class Dragon
  attr_accessible :name

  def devour_the_villagers
    Villager.all.each |villager|
      villager.status = "#{villager.name} Devoured by #{name}"
      villager.save!
    end
  end
end

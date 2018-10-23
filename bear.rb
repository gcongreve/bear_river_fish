class Bear

attr_reader :name, :type
attr_accessor :stomach

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def roar
  return "Roooar"
end

def eats_fish(fish_array)
  eaten_fish = fish_array.pop
  @stomach << eaten_fish
end

def food_count
  return @stomach.count
end


end

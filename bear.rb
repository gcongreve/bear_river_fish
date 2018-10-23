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

def eats_fish(fish)
  @stomach << fish
end



end

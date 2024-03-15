class GildedRose
  DEFAULT_CLASS = Item
  SPECIALIZED_CLASSES = {
    'normal'      => Normal,
    'Aged Brie'   => Brie,
    'Backstage passes to a TAFKAL80ETC' => Backstage}

  def self.for(name, days_remaining, quality)
    (SPECIALIZED_CLASSES[name] || DEFAULT_CLASS)
    new (quality, days_remaining)
  end

end
class Item
  attr_reader :quality, :days_remaining
  def initialize(quality, days_remaining)
    @quality, @days_remaining = quality, days_remaining
  end
  def tick
  end
end
class Normal < Item
  def tick
    @days_remaining = days_remaining
    @quality = quality
  end
end
class Brie < Item
  def tick
  @days_remaining -= 1
  return if @quality >= 50
  @quality += 1
  @quality +=1 if @days_remaining <= 0
  end
end
class Backstage < Item
  def tick
  @days_remaining -= 1
  return      if @quality >=50
  return @quality = 0 if @days_remaining < 0
  @quality += 1
  @quality += 1 if @days_remaining < 10
  @quality += 1 if @days_remaining < 5
  end
end



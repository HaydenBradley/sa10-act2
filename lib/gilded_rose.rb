class GildedRose

  def self.for(name:, days_remaining:, quality:)
    klass_for(name).new(quality, days_remaining)
  end
  Class Normal
  attr_reader :quality, :days_remaining
  def initialize( days_remaining, quality)
    @days_remaining = days_remaining
    @quality = quality
  end
  Class Brie
  @days_remaining -= 1
  return if @quality >= 50
  @quality += 1
  @quality +=1 if @days_remaining <= 0
end
  Class Backstage
  @days_remaining -= 1
  return      if @quality >=50
  return @quality = 0 if @days_remaining < 0
  @quality += 1
  @quality += 1 if @days_remaining < 10
  @quality += 1 if @days_remaining < 5
end
end


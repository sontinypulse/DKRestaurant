FoodItem.all.each do |item|
  item.destroy
end

Section.all.each do |item|
  item.destroy
end
if Section.count == 0
  %w(Breakfast Lunch Dinner Drinks).each do |section|
    Section.create(name: section)
  end
end

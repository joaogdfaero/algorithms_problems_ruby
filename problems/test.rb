new_items = []
items.each do |x|
    x = transform(x)
    new_items.append(x) unless x.nil?
end
items = new_items
json.array!(@donuts) do |donut|
  json.extract! donut, :id, :name, :filling, :topping, :extras, :cost, :image
  json.url donut_url(donut, format: :json)
end

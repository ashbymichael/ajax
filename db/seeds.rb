(1..5).each do |i|
  Dog.create(img: "img/dogs/#{i}.jpg")
end

(1..5).each do |i|
  Cat.create(img: "img/cats/#{i}.jpg")
end

(1..5).each do |i|
  Racoon.create(img: "img/racoons/#{i}.jpg")
end

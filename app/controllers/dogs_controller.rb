get '/dogs/random' do
  p '^v' * 25
  p 'correct route hit'
  p '^v' * 25
  # dog_id = Dog.all.sample.id
  # redirect "dogs/#{dog_id}"
end

get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :'dogs/show'
end
